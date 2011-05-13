#!/usr/bin/python
from search.SASParser import SASParser
from search.DeleteRelaxation import delete_relaxation
from search.RelevanceAnalysis import filter_irrelevant_variables
from search.lmcut import incremental_lmcut
from translate.additivehmax import crossreference_task, additive_hmax

from relaxedtasktranslator import translate_relaxed_task
from compare import compareHmax, compareGoalZone, validateCut
from Results import *

from time import time
from glob import glob
from subprocess import Popen, PIPE
import re
import os
import signal

translatepath = "./translate/translate.py"
benchmarksdir = '../../../downward/benchmarks/'

class TimeoutException(Exception):
    pass

class DebugValueList:
    def __init__(self):
        self.steps = []
    def newEntry(self):
        new = DebugValues()
        self.steps.append(new)
        return new

class DebugValues:
    def __init__(self):
        self.hmax_function = {}
        self.near_goal_area = [] 
        self.pcf = {}
        self.hmax_value = 0
        self.cut = []

def compareTask(problemfile, domainfile, what_to_compare):
    p = Popen(["python", translatepath, domainfile, problemfile], stdout=PIPE)
    p.wait()
    parser = SASParser()
    sastask = parser.parse_task(open("output.sas"))
    translationkey = parser.parse_translationkey(open("test.groups"))
    task = delete_relaxation(sastask, translationkey)
    task.convert_to_canonical_form()
    filter_irrelevant_variables(task)
    malte_task = translate_relaxed_task(task)
    malte_debug_value_list, my_debug_value_list = (DebugValueList(), DebugValueList())

    print "  Mine",
    start = time()
    my_h = incremental_lmcut(task, task.initial_state, [], {}, debug_value_list=my_debug_value_list)
    my_t = time() - start
    print " H:%d, T:%d" % (my_h, my_t * 1000)
    print "  Malte",
    start = time()
    crossreference_task(malte_task)
    malte_h = additive_hmax(malte_task, debug_value_list=malte_debug_value_list)
    malte_t = time() - start
    print " H:%d, T:%d" % (malte_h, malte_t * 1000)

    times = (my_t, malte_t, my_h, malte_h)
    samehmax, samegoalzone = (None, None) 
    if 'hmax' in what_to_compare:
        samehmax = compareHmax(my_debug_value_list, malte_debug_value_list, silent=True)
    if 'goalzone' in what_to_compare:
        samegoalzone = compareGoalZone(my_debug_value_list, malte_debug_value_list, silent=True)
    if 'cut' in what_to_compare:
        valid_cut = validateCut(my_debug_value_list, task)
    return ProblemResults(problemfile, times, samehmax, samegoalzone, valid_cut)

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

def benchmark(domains=None, problems=None, what_to_compare=['heristic', 'hmax', 'goalzone'], timeout=None):
    lmcut_suite = [(domainname, listproblems("%s%s/" % (benchmarksdir, domainname))) 
                    for domainname in
                    ['airport', 'blocks', 'depot', 'driverlog', 'freecell', 'gripper',
                     'logistics00', 'logistics98', 'miconic', 'mprime', 'mystery',
                     'openstacks-strips', 'pathways-noneg', 'pipesworld-notankage',
                     'pipesworld-tankage', 'psr-small', 'rovers', 'tpp', 'trucks-strips',
                     'zenotravel']
                  ]
    resultsfile = open("results.txt", "w")
    if domains:
        domains = sorted(list(set(domains) & set(range(len(lmcut_suite)))))
    else:
        domains = range(len(lmcut_suite))
    domains_done = 0
    for domain_id in domains:
        (domainname, filepaths) = lmcut_suite[domain_id]
        if problems:
            problems = sorted(list(set(problems) & set(range(len(filepaths)))))
        else:
            problems = range(len(filepaths))
        problems_done = 0
        resultsfile.write("domain: %s\n" % domainname)
        for problem_id in problems:
            (problemfile, domainfile) = filepaths[problem_id]
            print "Comparing domain %d/%d (%s) problem %d/%d" % (domains_done +1, len(domains),
                                                                 domainname, 
                                                                 problems_done +1, len(problems))
            if timeout:
                def raiseTimeout(signum, frame): 
                    raise TimeoutException()
                signal.signal(signal.SIGALRM, raiseTimeout)
                signal.alarm(timeout)
            try:
                results = compareTask(problemfile, domainfile, what_to_compare)
            except TimeoutException:
                print "  Timed out"
                results = ProblemResults(problemfile, error="Took longer than %d seconds" % timeout)
            resultsfile.write(str(results))
            resultsfile.flush()
            problems_done += 1
        domains_done += 1
    resultsfile.close()


if __name__ == "__main__":
    benchmark(domains=[3], problems=range(0,20), what_to_compare=["cut"], timeout=60) 
    print_results(parse_results("results.txt"))