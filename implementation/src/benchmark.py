#!/usr/bin/python
from search.DeleteRelaxation import delete_relaxation
from search.RelevanceAnalysis import filter_irrelevant_variables
from search.lmcut import incremental_lmcut
from search.Debug import DebugValueList

from translate.translate import pddl_to_sas
import translate.pddl

from benchmark.timeout import run_with_timeout 
from benchmark.validate import validateCut, validatePcf, validateRelevanceAnalysis
from benchmark.Results import ProblemResults, print_results, parse_results
from benchmark.problem_suites import problem_subset, LMCUT_EASY, LMCUT_MEDIUM, LMCUT_HARD, LMCUT_SUITE

from time import time, strftime
import os
import sys
import argparse

def benchmarkTask(problemfile, domainfile, what_to_test, timeout=None):
    print "  Translation ...",
    start = time()
    old_stdout = sys.stdout
    sys.stdout = open(os.devnull, 'w')
    task = translate.pddl.open(task_filename=problemfile, domain_filename=domainfile)
    sas_task, translationkey, _ = pddl_to_sas(task)
    sys.stdout = old_stdout
    print time() - start
    print "  Relaxing ...",
    start = time()
    task = delete_relaxation(sas_task, translationkey)
    print time() - start
    print "  Filtering ...",
    start = time()
    filter_irrelevant_variables(task)
    task.convert_to_canonical_form()
    task.crossreference()
    print time() - start
    print "  Solving ...",
    debug_value_list = DebugValueList()
    start = time()
    h = run_with_timeout(timeout, None, incremental_lmcut,
                            task, debug_value_list=debug_value_list)
    solve_time = time() - start
    if h is None:
        print "  Timed out"
        return ProblemResults(problemfile, error="Took longer than %d seconds" % timeout)
    print "H:%s, T:%d" % (str(h), solve_time)
    valid_cut = None 
    if 'cuts' in what_to_test:
        valid_cut = validateCut(debug_value_list, task, all=True)
    if 'pcf' in what_to_test:
        validatePcf(debug_value_list, task, all=True, silent=False)
    if 'relevance' in what_to_test:
        validateRelevanceAnalysis(sas_task, translationkey, h, timeout=timeout)
    return ProblemResults(problemfile, solve_time, valid_cut)

def run_benchmark(results_filename, domains=None, problems=None, problem_suite=None, 
                  what_to_test=['heuristic', 'cuts', 'pcf', 'relevance'], timeout=None):
    benchmark_suite = problem_subset(domains=domains, problems=problems, problem_suite=problem_suite)
    resultsfile = open(results_filename, "w")
    for domain_id, (domainname, filepaths) in enumerate(benchmark_suite):
        resultsfile.write("domain: %s\n" % domainname)
        for problem_id, (problemfile, domainfile) in enumerate(filepaths):
            print "Comparing domain %d/%d (%s) problem %d/%d (%s)" % (
                    domain_id +1, len(benchmark_suite), domainname,
                    problem_id +1, len(filepaths), problemfile)
            results = benchmarkTask(problemfile, domainfile, what_to_test, timeout)
            resultsfile.write(str(results))
            resultsfile.flush()
    resultsfile.close()

if __name__ == "__main__":
    def eval_here(string):
        return eval(string)
    parser = argparse.ArgumentParser(description='Run a benchmark')
    parser.add_argument('-d', '--domains', type=eval_here)
    parser.add_argument('-p', '--problems', type=eval_here)
    parser.add_argument('-s', '--suite', type=eval_here)
    parser.add_argument('-t', '--timeout', type=int)
    parser.add_argument('-m', '--measure', type=eval_here, default=['heuristic'])
    args = parser.parse_args(sys.argv[1:])

    filename = "results/results_%s.txt" % strftime("%y_%m_%d_%H_%M_%S")
    run_benchmark(filename, domains=args.domains, problems=args.problems, problem_suite=args.suite, 
                  what_to_test=args.measure, timeout=args.timeout) 
    # import profile
    # profile.run('run_with_timeout(600, None, benchmark, domains=[9], problems=[19])') 
    print_results(parse_results(filename))
