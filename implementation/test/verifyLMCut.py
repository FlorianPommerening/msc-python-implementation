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
from Results import ProblemResults, print_results, parse_results

from time import time, strftime
from glob import glob
import re
import os
import sys

translatepath = "./translate/translate.py"
benchmarksdir = '../../../downward/benchmarks/'

def listproblems(basedir):
    result = []
    problemfiles = [file for file in glob(basedir + '*')
                        if file.find("domain", len(basedir)) == -1]
    for problemfile in problemfiles:
        problemfile = problemfile.replace("\\", "/")
        match = re.match(basedir + r"p(\d\d)", problemfile)
        domainfile = ""
        if match:
            domainfile = basedir + "domain_p%s.pddl" % match.groups(1)
            if not os.path.exists(domainfile):
                domainfile = basedir + "p%s-domain.pddl" % match.groups(1)
        if not os.path.exists(domainfile):
            domainfile = basedir + "domain.pddl"

        assert os.path.exists(domainfile), "could not find domainfile for problem '%s'" % problemfile
        result.append((problemfile, domainfile))
    sortlist = [(map(int, re.findall(r"\d+", problemfile)), (problemfile, domainfile)) for (problemfile, domainfile) in result]
    return [name for (_, name) in sorted(sortlist)]

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

def benchmark(filename, domains=None, problems=None, what_to_compare=['heuristic', 'hmax', 'goalzone', 'cuts', 'pcf', 'relevance'], timeout=None):
    lmcut_suite = [(domainname, listproblems("%s%s/" % (benchmarksdir, domainname))) 
                    for domainname in
                    ['airport', 'blocks', 'depot', 'driverlog', 'freecell',
                     'gripper', 'logistics00', 'logistics98', 'miconic', 'mprime',
                     'mystery', 'openstacks-strips', 'pathways-noneg', 'pipesworld-notankage', 'pipesworld-tankage',
                     'psr-small', 'rovers', 'tpp', 'trucks-strips', 'zenotravel']
                  ]
    resultsfile = open(filename, "w")
    if domains:
        domain_ids = sorted(list(set(domains) & set(range(len(lmcut_suite)))))
    else:
        domain_ids = range(len(lmcut_suite))
    domains_done = 0
    for domain_id in domain_ids:
        (domainname, filepaths) = lmcut_suite[domain_id]
        if problems:
            problem_ids = sorted(list(set(problems) & set(range(len(filepaths)))))
        else:
            problem_ids = range(len(filepaths))
        problems_done = 0
        resultsfile.write("domain: %s\n" % domainname)
        for problem_id in problem_ids:
            (problemfile, domainfile) = filepaths[problem_id]
            print "Comparing domain %d/%d (%s) problem %d/%d" % (domains_done +1, len(domain_ids),
                                                                 domainname, 
                                                                 problems_done +1, len(problem_ids))
            results = compareTask(problemfile, domainfile, what_to_compare, timeout)
            resultsfile.write(str(results))
            resultsfile.flush()
            problems_done += 1
        domains_done += 1
    resultsfile.close()


if __name__ == "__main__":
    filename = "results_%s.txt" % strftime("%y_%m_%d_%H_%M_%S")
    benchmark(filename, domains=range(0,20), problems=range(0,160), timeout=60) 
    # import profile
    # profile.run('run_with_timeout(600, None, benchmark, domains=[9], problems=[19])') 
    print_results(parse_results(filename))
