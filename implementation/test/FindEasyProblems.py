#!/usr/bin/python
from benchmark.problem_suites import problem_subset, LMCUT_EASY, LMCUT_SUITE
from benchmark.timeout import run_with_timeout
from verifyLMCut import compareTask
import sys, os

old_stdout = sys.stdout
sys.stdout = open(os.devnull, 'w')
results = open("medium.txt", 'w')
#problems_suite = problem_subset(problem_suite=LMCUT_HARD)
for (domainname, filepaths), (_, easy_filepaths) in zip(LMCUT_SUITE, LMCUT_EASY):
    old_stdout.write('\n%s (%d)\n' % (domainname, len(filepaths)))
    results.write('"        %s":[' % domainname)
    for problem_id, (problemfile, domainfile) in enumerate(filepaths):
        if (problemfile, domainfile) in easy_filepaths:
            continue
        old_stdout.write("%d " % problem_id)
        old_stdout.flush()
        result = run_with_timeout(60, None, compareTask, problemfile, domainfile, ['heuristic', 'hmax', 'goalzone', 'cuts', 'pcf', 'relevance'])
        if result is not None:
            results.write("%d, " % problem_id)
        old_stdout.write("ok " if (result is not None) else "no ")
    results.write("],\n")
sys.stdout = old_stdout
print "done"