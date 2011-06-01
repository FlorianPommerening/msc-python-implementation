#!/usr/bin/python

from translate.translate import pddl_to_sas
import translate.pddl
from search.DeleteRelaxation import delete_relaxation
from search.RelevanceAnalysis import filter_irrelevant_variables
from benchmark.problem_suites import problem_subset


import sys, os, time, argparse

def relaxTask(problemfile, domainfile, outstream):
    print "  Translation ...",
    start = time.time()
    old_stdout = sys.stdout
    sys.stdout = open(os.devnull, 'w')
    task = translate.pddl.open(task_filename=problemfile, domain_filename=domainfile)
    sas_task, translationkey, _ = pddl_to_sas(task)
    sys.stdout = old_stdout
    print time.time() - start
    print "  Relaxing ...",
    start = time.time()
    task = delete_relaxation(sas_task, translationkey)
    print time.time() - start
    print "  Filtering ...",
    start = time.time()
    filter_irrelevant_variables(task)
    task.convert_to_canonical_form()
    print time.time() - start
    task.dump(outstream)
    print "done"

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='translate a task and write the delete relaxed canonicalized task to a file')
    parser.add_argument('domain')
    parser.add_argument('problem', type=int)
    parser.add_argument('outfile', nargs='?')
    args = parser.parse_args()
    outstream = sys.stdout
    if args.outfile is not None:
        outstream = open(args.outfile, 'w')
    # yeah, yeah, I know this is ugly
    (problemfile, domainfile) = problem_subset(problems={args.domain:[args.problem]})[0][1][0]
    relaxTask(problemfile, domainfile, outstream)