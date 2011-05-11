from search.SASParser import SASParser
from search.DeleteRelaxation import delete_relaxation
from search.RelevanceAnalysis import filter_irrelevant_variables
from search.lmcut import incremental_lmcut

from time import time
from glob import glob
from subprocess import Popen, PIPE
import re
import os

translatepath = "../../../downward/src/translate/translate.py"
additivehmaxpath = "../../../downward/src/translate/additive-hmax.py"

def myLMCut(problemfile, domainfile):
    p = Popen([translatepath, domainfile, problemfile], stdout=PIPE)
    p.wait()
    parser = SASParser()
    sastask = parser.parse_task(open("output.sas"))
    task = delete_relaxation(sastask)
    filter_irrelevant_variables(task)
    return incremental_lmcut(task, task.initial_state, [], {})


def malteLMCut(problemfile, domainfile):
    cmd = " ".join([additivehmaxpath, domainfile, problemfile])
    p = Popen(cmd, shell=True, stdout=PIPE)
    p.wait()
    return int(p.stdout.readlines()[-1]) 

def compareTask(problemfile, domainfile):
    print "  Mine",
    start = time()
    my_h = myLMCut(problemfile, domainfile)
    my_t = time() - start
    print " H:%d, T:%d" % (my_h, my_t * 1000)
    print "  Malte",
    start = time()
    malte_h = malteLMCut(problemfile, domainfile)
    malte_t = time() - start
    print " H:%d, T:%d" % (malte_h, malte_t * 1000)
    return my_t, malte_t, my_h, malte_h

def listproblems(basedir):
    result = []
    problemfiles = [file for file in glob(basedir + '*')
                        if file.find("domain", len(basedir)) == -1]
    for problemfile in problemfiles:
        match = re.match(basedir + "p(\d\d)", problemfile)
        domainfile = ""
        if match:
            domainfile = basedir + "domain_p%s.pddl" % match.groups(1)
            if not os.path.exists(domainfile):
                domainfile = basedir + "p%s-domain.pddl" % match.groups(1)
        if not os.path.exists(domainfile):
            domainfile = basedir + "domain.pddl"

        assert os.path.exists(domainfile), "could not find domainfile for problem '%s'" % problemfile
        result.append((problemfile, domainfile))
    return sorted(result)

def benchmark(domains=None, problems=None):
    benchmarksdir = '../../../downward/benchmarks/'
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
        n_domains = len(domains)
    else:
        n_domains = len(lmcut_suite)
    for domain_id, (domainname, filepaths) in enumerate(lmcut_suite):
        if problems:
            n_problems = len(problems)
        else:
            n_problems = len(filepaths)
        if domains and domain_id not in domains:
            continue
        resultsfile.write("domain: %s\n" % domainname)
        for problem_id, (problemfile, domainfile) in enumerate(filepaths):
            if problems and problem_id not in problems:
                continue
            print "Comparing domain %d/%d (%s) problem %d/%d" % (domain_id +1, n_domains,
                                                                 domainname, 
                                                                 problem_id +1, n_problems)
            my_t, malte_t, my_h, malte_h = compareTask(problemfile, domainfile)
            resultsfile.write("%s %s %s %s %s\n" % (problemfile, my_t, malte_t, my_h, malte_h))
            resultsfile.flush()
    resultsfile.close()

class DomainResults:
    def __init__(self, name, problemresults):
        self.name = name
        self.problemresults = problemresults
        aggregatedtimedifference = 0
        aggregatedspeedup = 0
        aggregatedheuristicdifference = 0
        self.maxheuristicdifference = 0
        self.minheuristicdifference = 0
        for (my_t, malte_t, my_h, malte_h) in problemresults.values():
            aggregatedtimedifference += malte_t - my_t
            aggregatedheuristicdifference  += malte_h - my_h
            self.maxheuristicdifference = max(self.maxheuristicdifference, malte_h - my_h)
            self.minheuristicdifference = min(self.minheuristicdifference, malte_h - my_h)
            aggregatedspeedup += malte_t / my_t
        self.averagetimedifference = aggregatedtimedifference / len(problemresults)
        self.averagespeedup = aggregatedspeedup / len(problemresults)
        self.averageheuristicdifference = aggregatedheuristicdifference / len(problemresults)
        


def parse_results(filename):
    results = []
    problemresults = {}
    domainname = None
    for line in open(filename):
        if line.startswith("domain: "):
            if domainname is not None:
                results.append(DomainResults(domainname, problemresults))
            domainname = line[7:]
            problemresults = {}
        else:
            tokens = line.strip().split() 
            if len(tokens) != 5:
                print "cannot parse result line", line
                continue
            (problemfile, my_t, malte_t, my_h, malte_h) = tokens 
            problemresults[problemfile] = (float(my_t), float(malte_t), int(my_h), int(malte_h))
    if domainname is not None:
        results.append(DomainResults(domainname, problemresults))
    return results

def print_results(results):
    for domainresults in results: 
        print domainresults.name, " (td: %s, su: %s, hd: %s [%s - %s])" % (
                               str(domainresults.averagetimedifference * 1000),
                               str(domainresults.averagespeedup),
                               str(domainresults.averageheuristicdifference),
                               str(domainresults.minheuristicdifference),
                               str(domainresults.maxheuristicdifference),
                              )


if __name__ == "__main__":
    benchmark(domains=range(8,9), problems=range(10))
    print_results(parse_results("results.txt"))
