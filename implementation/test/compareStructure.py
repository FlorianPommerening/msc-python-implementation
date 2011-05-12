#!/usr/bin/python
import translate.pddl
from search.SASParser import SASParser
from search.DeleteRelaxation import delete_relaxation
from search.RelevanceAnalysis import filter_irrelevant_variables
from relaxedtasktranslator import *

from subprocess import Popen, PIPE

translatepath = "./translate/translate.py"
benchmarksdir = '../../../downward/benchmarks/'

def compareRelaxation(problemfile, domainfile):
    p = Popen([translatepath, domainfile, problemfile], stdout=PIPE)
    p.wait()
    parser = SASParser()
    sastask = parser.parse_task(open("output.sas"))
    translationkey = parser.parse_translationkey(open("test.groups"))
    mytask = delete_relaxation(sastask, translationkey)
    mytask.convert_to_canonical_form()
    filter_irrelevant_variables(mytask)

    maltetask = translate.pddl.open(task_filename=problemfile, domain_filename=domainfile)
    maltetask = translate.relaxed_tasks.build_relaxed_task(maltetask)
    maltetask.convert_to_canonical_form()

    maltesvars = set(map(str, maltetask.atoms))
    myvars = set(map(varname, mytask.variables))
    print
    print "Additional var in my task"
    for var in sorted(myvars - maltesvars):
        print var
    print
    print "Additional var in maltes task"
    for var in sorted(maltesvars - myvars):
        print var

    malte_opname_to_op = {op.name:op for op in maltetask.actions}
    my_opname_to_op = {opname(op):op for op in mytask.operators}

    if set(my_opname_to_op) - set(malte_opname_to_op):
        print
        print "Additional operators in my task"
        for var in sorted(set(my_opname_to_op) - set(malte_opname_to_op)):
            print var
    if set(malte_opname_to_op) - set(my_opname_to_op):
        print
        print "Additional operators in maltes task"
        for name in sorted(set(malte_opname_to_op) - set(my_opname_to_op)):
            print name

    for name in set(malte_opname_to_op) & set(my_opname_to_op):
        my_op = my_opname_to_op[name]
        malte_op = malte_opname_to_op[name]
        maltespreconditions = set(map(str, malte_op.preconditions))
        mypreconditions = set(map(varname, my_op.precondition))
        if mypreconditions - maltespreconditions:
            print
            print "Additional preconditions for operator %s in my task" % name
            for var in sorted(mypreconditions - maltespreconditions):
                print var
        if maltespreconditions - mypreconditions:
            print
            print "Additional preconditions for operator %s in maltes task" % name
            for var in sorted(maltespreconditions - mypreconditions):
                print var
        malteseffects = set(map(str, malte_op.effects))
        myeffects = set(map(varname, my_op.effect))
        if myeffects - malteseffects:
            print
            print "Additional effects for operator %s in my task" % name
            for var in sorted(myeffects - malteseffects):
                print var
        if malteseffects - myeffects:
            print
            print "Additional effects for operator %s in maltes task" % name
            for var in sorted(malteseffects - myeffects):
                print var
        assert malte_op.cost == my_op.cost, "operator %s has different cost malte:%d mine:%d" % (name, malte_op.cost, my_op.cost)

    maltegoals = set(map(str, maltetask.goals))
    mygoals = set(map(varname, mytask.goal))
    assert mygoals == maltegoals, "different goals:\n" + "\n".join(mygoals ^ maltegoals)
    malteinits = set(map(str, maltetask.init))
    myinits = set(map(varname, mytask.initial_state))
    assert myinits == malteinits, "different initial states:\n" + "\n".join(myinits ^ malteinits)

if __name__ == "__main__":
    compareRelaxation("../../../downward/benchmarks/blocks/probBLOCKS-17-0.pddl", "../../../downward/benchmarks/blocks/domain.pddl")

