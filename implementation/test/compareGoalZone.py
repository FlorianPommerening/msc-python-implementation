#!/usr/bin/python
from translate import *
from relaxedtasktranslator import *
from search.SASParser import SASParser
from search.DeleteRelaxation import delete_relaxation
from search.RelevanceAnalysis import filter_irrelevant_variables
from search.hmax import hmax
from search.lmcut import find_cut

import re
from subprocess import Popen, PIPE

translatepath = "./translate/translate.py"
benchmarksdir = '../../../downward/benchmarks/'

def compareGoalZone(problemfile, domainfile,silent=False):
    p = Popen([translatepath, domainfile, problemfile], stdout=PIPE)
    p.wait()
    parser = SASParser()
    sastask = parser.parse_task(open("output.sas"))
    translationkey = parser.parse_translationkey(open("test.groups"))
    mytask = delete_relaxation(sastask, translationkey)
    mytask.convert_to_canonical_form()
    filter_irrelevant_variables(mytask)

    # mine
    my_near_goal_area = []
    my_result, my_hmax, my_pcf = hmax(mytask, mytask.initial_state)
    operator_costs = {op:op.cost for op in mytask.operators}
    find_cut(mytask, mytask.initial_state, operator_costs, my_result, my_hmax, my_pcf, near_goal_area=my_near_goal_area)

    # malte
    malte_near_goal_area = []
    maltetask = translate_relaxed_task(mytask)
    maltetask.convert_to_canonical_form()
    crossreference_task(maltetask)
    additive_hmax(maltetask, near_goal_area=malte_near_goal_area)

    malte_near_goal_area = set(map(str, malte_near_goal_area))
    my_near_goal_area = set(map(varname, my_near_goal_area))
    if my_near_goal_area - malte_near_goal_area and not silent:
        print
        print "Additional atoms in my goal zone:"
        for var in sorted(my_near_goal_area - malte_near_goal_area):
            print var
    if malte_near_goal_area - my_near_goal_area and not silent:
        print
        print "Additional atoms in malte's goal zone:"
        for var in sorted(malte_near_goal_area - my_near_goal_area):
            print var
    return malte_near_goal_area == my_near_goal_area

if __name__ == "__main__":
    if compareGoalZone("../../../downward/benchmarks/blocks/probBLOCKS-4-0.pddl", "../../../downward/benchmarks/blocks/domain.pddl"):
        print "All good"

