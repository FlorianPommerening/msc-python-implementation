#!/usr/bin/python
from translate import *
from relaxedtasktranslator import *
from search.SASParser import SASParser
from search.DeleteRelaxation import delete_relaxation
from search.RelevanceAnalysis import filter_irrelevant_variables
from search.hmax import hmax

import re
from subprocess import Popen, PIPE

translatepath = "./translate/translate.py"
benchmarksdir = '../../../downward/benchmarks/'

def compareHmax(problemfile, domainfile, silent=False):
    p = Popen([translatepath, domainfile, problemfile], stdout=PIPE)
    p.wait()
    parser = SASParser()
    sastask = parser.parse_task(open("output.sas"))
    translationkey = parser.parse_translationkey(open("test.groups"))
    mytask = delete_relaxation(sastask, translationkey)
    filter_irrelevant_variables(mytask)

    # mine
    my_result, my_hmax, my_pcf = hmax(mytask, mytask.initial_state)

    # malte
    malte_hmax = {}
    maltetask = translate_relaxed_task(mytask)
    maltetask.convert_to_canonical_form()
    crossreference_task(maltetask)
    additive_hmax(maltetask, hmax_function=malte_hmax)
    
    failed = False
    for var in map(str, mytask.variables):
        if malte_hmax[varname(var)] != my_hmax[var]:
            failed = True
            if not silent:
                assert False, "Different hmax value for %s: (malte: %d, flo: %d)" % (var, malte_hmax[varname(var)], my_hmax[var])
    if my_result == malte_hmax["@@goal"]:
        failed = True
        if not silent:
            assert False, "Different hmax value for goal: (malte: %d, flo: %d)" % (malte_hmax["@@goal"], my_result)
    return failed

if __name__ == "__main__":
    if compareHmax("../../../downward/benchmarks/blocks/probBLOCKS-10-0.pddl", "../../../downward/benchmarks/blocks/domain.pddl"):
        print "All good"

