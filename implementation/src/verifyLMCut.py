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

def benchmark():
    benchmarksdir = '../../../downward/benchmarks/'
    lmcut_suite = [(domainname, listproblems("%s%s/" % (benchmarksdir, domainname))) 
                    for domainname in
                    ['airport', 'blocks', 'depot', 'driverlog', 'freecell', 'gripper',
                     'logistics00', 'logistics98', 'miconic', 'mprime', 'mystery',
                     'openstacks-strips', 'pathways-noneg', 'pipesworld-notankage',
                     'pipesworld-tankage', 'psr-small', 'rovers', 'tpp', 'trucks-strips',
                     'zenotravel']
                  ]
    results = {}
    for domain_id, (domainname, filepaths) in enumerate(lmcut_suite[:1]):
        results[domainname] = {}
        for problem_id, (problemfile, domainfile) in enumerate(filepaths[:10]):
            print "Comparing domain %d/%d problem %d/%d" % (domain_id +1, len(lmcut_suite), 
                                                            problem_id +1, len(filepaths))
            my_t, malte_t, my_h, malte_h = compareTask(problemfile, domainfile)
            results[domainname][problemfile] = (my_t, malte_t, my_h, malte_h)

    for (domainname, filepaths) in lmcut_suite:
        if domainname not in results:
            continue
        aggregatedtimedifference = 0
        aggregatedheuristicdifference = 0
        maxheuristicdifference = 0
        minheuristicdifference = 0
        aggregatedspeedup = 0
        for (problemfile, domainfile) in filepaths:
            if problemfile not in results[domainname]:
                continue
            (my_t, malte_t, my_h, malte_h) = results[domainname][problemfile]
            aggregatedtimedifference += malte_t - my_t
            aggregatedheuristicdifference  += malte_h - my_h
            maxheuristicdifference = max(maxheuristicdifference, malte_h - my_h)
            minheuristicdifference = min(minheuristicdifference, malte_h - my_h)
            aggregatedspeedup += malte_t / my_t
        results[domainname]["averagetimedifference"] = aggregatedtimedifference / len(filepaths)
        results[domainname]["averagespeedup"] = aggregatedspeedup / len(filepaths)
        results[domainname]["averageheuristicdifference"] = aggregatedheuristicdifference / len(filepaths)
        results[domainname]["maxheuristicdifference"] = maxheuristicdifference
        results[domainname]["minheuristicdifference"] = minheuristicdifference
        print domainname, " (td: %s, su: %s, hd: %s [%s - %s])" % (
                                               str(results[domainname]["averagetimedifference"] * 1000),
                                               str(results[domainname]["averagespeedup"]),
                                               str(results[domainname]["averageheuristicdifference"]),
                                               str(results[domainname]["minheuristicdifference"]),
                                               str(results[domainname]["maxheuristicdifference"]),
                                              )
    
        
benchmark()