#!/usr/bin/python
from benchmark.timeout import run_with_timeout 

from search.SASParser import SASParser
from search.DeleteRelaxation import delete_relaxation
from search.RelevanceAnalysis import filter_irrelevant_variables
from search.lmcut import incremental_lmcut
from search.Debug import DebugValueList

from translate.additivehmax import crossreference_task, additive_hmax
from translate.translate import pddl_to_sas
import translate.pddl

from relaxedtasktranslator import translate_relaxed_task, translate_pcf
from compare import compareHmax, compareGoalZone, validateCut, compareCuts, validatePcf, validateRelevanceAnalysis
from benchmark.Results import ProblemResults, print_results, parse_results
from benchmark.problem_suites import problem_subset, LMCUT_EASY, LMCUT_MEDIUM, LMCUT_HARD, LMCUT_SUITE

from time import time, strftime
import os
import sys
import argparse

def compareTask(problemfile, domainfile, what_to_compare, timeout=None):
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
    print "  Conversion ...",
    start = time()
    malte_task, operator_translator = translate_relaxed_task(task)
    crossreference_task(malte_task)
    print time() - start
    malte_debug_value_list, my_debug_value_list = (DebugValueList(), DebugValueList())

    print "  Mine",
    start = time()
    my_h = run_with_timeout(timeout, None, incremental_lmcut,
                            task, debug_value_list=my_debug_value_list)
    my_t = time() - start
    if my_h is None:
        print "  Timed out"
        return ProblemResults(problemfile, error="Took longer than %d seconds" % timeout)
    print " H:%s, T:%d" % (str(my_h), my_t * 1000)
    print "  Malte",
    start = time()
    malte_h = run_with_timeout(timeout, None, additive_hmax,
                               malte_task, debug_value_list=malte_debug_value_list,
                               pcfs=(translate_pcf(step.pcf, malte_task, operator_translator) for step in my_debug_value_list.steps))
    malte_t = time() - start
    if malte_h is None:
        print "  Malte timed out"
        return ProblemResults(problemfile, error="Took longer than %d seconds" % timeout)
    print " H:%s, T:%d" % (str(malte_h), malte_t * 1000)

    times = (my_t, malte_t, my_h, malte_h)
    samehmax, samegoalzone, valid_cut = (None, None, None) 
    if 'hmax' in what_to_compare:
        samehmax = compareHmax(my_debug_value_list, malte_debug_value_list, silent=True, all=True)
    if 'goalzone' in what_to_compare:
        samegoalzone = compareGoalZone(my_debug_value_list, malte_debug_value_list, silent=False, all=True)
    if 'cuts' in what_to_compare:
        valid_cut = compareCuts(my_debug_value_list, malte_debug_value_list, all=True)
        valid_cut &= validateCut(my_debug_value_list, task, all=True)
    if 'pcf' in what_to_compare:
        validatePcf(my_debug_value_list, task, all=True, silent=False)
    if 'relevance' in what_to_compare:
        validateRelevanceAnalysis(sas_task, translationkey, my_h, timeout=timeout)
    return ProblemResults(problemfile, times, samehmax, samegoalzone, valid_cut)

def benchmark(benchmark_suite, filename, what_to_compare=['heuristic', 'hmax', 'goalzone', 'cuts', 'pcf', 'relevance'], timeout=None):
    resultsfile = open(filename, "w")
    for domain_id, (domainname, filepaths) in enumerate(benchmark_suite):
        resultsfile.write("domain: %s\n" % domainname)
        for problem_id, (problemfile, domainfile) in enumerate(filepaths):
            print "Comparing domain %d/%d (%s) problem %d/%d (%s)" % (
                    domain_id +1, len(benchmark_suite), domainname,
                    problem_id +1, len(filepaths), problemfile)
            results = compareTask(problemfile, domainfile, what_to_compare, timeout)
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
    arguments = parser.parse_args(sys.argv[1:])

    filename = "results_%s.txt" % strftime("%y_%m_%d_%H_%M_%S")
    benchmark_suite = problem_subset(domains=arguments.domains, problems=arguments.problems, problem_suite=arguments.suite)
    benchmark(benchmark_suite, filename, timeout=60) 
    # import profile
    # profile.run('run_with_timeout(600, None, benchmark, domains=[9], problems=[19])') 
    print_results(parse_results(filename))
