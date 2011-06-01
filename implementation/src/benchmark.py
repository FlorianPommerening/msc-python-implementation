#!/usr/bin/python
from search.DeleteRelaxation import delete_relaxation
from search.RelevanceAnalysis import filter_irrelevant_variables
from search.lmcut import calculate_lmcut
from search.Debug import DebugValueList
from search.BranchAndBoundSearch import BranchAndBoundSearch 
from search.OperatorSelector import AchieveLandmarksOrGoalsOperatorSelector
from search.hmax import hmax

from translate.translate import pddl_to_sas
import translate.pddl

import cppmodule.adapter

from benchmark.timeout import run_with_timeout 
from benchmark.validate import validateCuts, validatePcf, validateRelevanceAnalysis
from benchmark.Results import ProblemResults
from benchmark.problem_suites import problem_subset, guessDomainName, guessDomainFile, LMCUT_EASY, LMCUT_MEDIUM, LMCUT_HARD, LMCUT_SUITE

from time import time, strftime
import os
import sys
import argparse

def prepareTask(problemfile, domainfile, results):
    print "  Translation ...",
    start = time()
    old_stdout = sys.stdout
    sys.stdout = open(os.devnull, 'w')
    task = translate.pddl.open(task_filename=problemfile, domain_filename=domainfile)
    sas_task, translationkey, _ = pddl_to_sas(task)
    sys.stdout = old_stdout
    results['translation_time'] = time() - start
    print results['translation_time']
    print "  Relaxing ...",
    start = time()
    task = delete_relaxation(sas_task, translationkey)
    results['relaxation_time'] = time() - start
    print results['relaxation_time']
    print "  Filtering ...",
    start = time()
    filter_irrelevant_variables(task)
    task.convert_to_canonical_form()
    task.crossreference()
    results['relevance_analysis_time'] = time() - start
    print results['relevance_analysis_time']
    return task, sas_task, translationkey

def benchmarkSearch(problemfile, domainfile, what_to_test, timeout=None):
    results = {}
    task, _, _ = prepareTask(problemfile, domainfile, results)
    print "  Searching for h^+ ...",
    start = time()
    search = BranchAndBoundSearch(task, AchieveLandmarksOrGoalsOperatorSelector())
    try:
        h = run_with_timeout(timeout, None, search.run, validateCuts=("cuts" in what_to_test))
    except RuntimeError:
        print "Recusion depth exceeded"
        return ProblemResults(problemfile, error="Recusion depth exceeded")
    solve_time = time() - start
    if h is None:
        print "  Timed out"
        return ProblemResults(problemfile, error="Took longer than %d seconds" % timeout)
    print "H:%s, T:%d" % (str(h), solve_time)
    if "cuts" in what_to_test:
        # cut validation will assert False if there is any invalid cut.
        # write in the file to remember that all cuts were validated 
        results["valid_cut"] = True
    return ProblemResults(problemfile, h_plus=h, solve_time=solve_time, **results)

def benchmarkHeuristic(problemfile, domainfile, what_to_test, timeout=None):
    results = {}
    task, sas_task, translationkey = prepareTask(problemfile, domainfile, results)
    print "  Solving ...",
    debug_value_list = DebugValueList()
    start = time()
    h = run_with_timeout(timeout, None, calculate_lmcut,
                            task, debug_value_list=debug_value_list)
    solve_time = time() - start
    if h is None:
        print "  Timed out"
        return ProblemResults(problemfile, error="Took longer than %d seconds" % timeout)
    print "H:%s, T:%d" % (str(h), solve_time)
    if 'cuts' in what_to_test:
        results['valid_cut'] = validateCuts(debug_value_list, task, all=True)
    if 'pcf' in what_to_test:
        results['valid_pcf'] = validatePcf(debug_value_list, task, all=True, silent=False)
    if 'relevance' in what_to_test:
        results['valid_relevance_analysis'] = validateRelevanceAnalysis(sas_task, translationkey, h, timeout=timeout)
    return ProblemResults(problemfile, heuristic=h, solve_time=solve_time, **results)

def benchmarkHmax(problemfile, domainfile, hmax_function, timeout=None):
    results = {}
    task, _, _ = prepareTask(problemfile, domainfile, results)
    print "  Solving ...",
    start = time()
    
    h = run_with_timeout(timeout, None, hmax_function, task)
    solve_time = time() - start
    if h is None:
        print "  Timed out"
        return ProblemResults(problemfile, error="Took longer than %d seconds" % timeout)
    print "H:%s, T:%d" % (str(h), solve_time)
    return ProblemResults(problemfile, h_max=h, solve_time=solve_time, **results)

def run_benchmark(results_filename, domains=None, problems=None, problem_suite=None, benchmark='heuristic',
                  what_to_test=['cuts', 'pcf', 'relevance'], timeout=None):
    benchmark_suite = problem_subset(domains=domains, problems=problems, problem_suite=problem_suite)
    resultsfile = open(results_filename, "w")
    for domain_id, (domainname, filepaths) in enumerate(benchmark_suite):
        resultsfile.write("domain: %s\n" % domainname)
        for problem_id, (problemfile, domainfile) in enumerate(filepaths):
            print "Benchmarking domain %d/%d (%s) problem %d/%d (%s)" % (
                    domain_id +1, len(benchmark_suite), domainname,
                    problem_id +1, len(filepaths), problemfile)
            if benchmark == 'hmax_internal':
                def hmax_internal(task):
                    return hmax(task, task.initial_state)[0]
                results = benchmarkHmax(problemfile, domainfile, hmax_internal, timeout)
            elif benchmark == 'hmax_external':
                results = benchmarkHmax(problemfile, domainfile, cppmodule.adapter.hmax, timeout)
            elif benchmark == 'lmcut_internal':
                results = benchmarkHeuristic(problemfile, domainfile, what_to_test, timeout)
            else:
                results = benchmarkSearch(problemfile, domainfile, what_to_test, timeout)
            resultsfile.write(str(results))
            resultsfile.flush()
    resultsfile.close()

if __name__ == "__main__":
    def eval_here(string):
        return eval(string)
    parser = argparse.ArgumentParser(description='Run a benchmark')
    parser.add_argument('-b', '--benchmark', choices=['heuristic', 'hmax_internal', 'hmax_external', 'lmcut_internal'], default='heuristic')
    
    # TODO the two ways to define problems should be mutually exclusive. no idea how to do this with argparse
    # right now -p -d and -s just get preference
    parser.add_argument('-d', '--domains', type=eval_here)
    parser.add_argument('-p', '--problems', type=eval_here)
    parser.add_argument('-s', '--suite', type=eval_here)
    parser.add_argument('-pf', '--problemfile')
    parser.add_argument('-df', '--domainfile')
    
    parser.add_argument('-t', '--timeout', type=int)
    parser.add_argument('-m', '--measure', type=eval_here, default=['heuristic'])
    parser.add_argument('-o', '--out')
    parser.add_argument('-od', '--outdir')
    args = parser.parse_args(sys.argv[1:])

    sys.setrecursionlimit(2000)

    if args.outdir is None:
        args.outdir = "../results"
    if not os.path.exists(args.outdir):
        os.mkdir(args.outdir)
    filename = os.path.join(args.outdir, "results_%s.txt" % strftime("%y_%m_%d_%H_%M_%S"))
    if args.out is not None:
        filename = os.path.join(args.outdir, args.out)
    if args.problems is None and args.domains is None and args.suite is None and args.problemfile is not None:
        if args.domainfile is None:
            args.domainfile = guessDomainFile(args.problemfile)
        domainname = guessDomainName(args.domainfile)
        args.suite = [(domainname, [(args.problemfile, args.domainfile)])]
    run_benchmark(filename, domains=args.domains, problems=args.problems, problem_suite=args.suite,
                  benchmark=args.benchmark, what_to_test=args.measure, timeout=args.timeout) 
    # import profile
    # profile.run('run_with_timeout(600, None, benchmark, domains=[9], problems=[19])') 
