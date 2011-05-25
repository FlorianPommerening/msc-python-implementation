#!/usr/bin/python
from benchmark.problem_suites import problem_subset, LMCUT_EASY, LMCUT_MEDIUM, LMCUT_SUITE
from benchmark.timeout import run_with_timeout
from benchmark.Results import *

from collections import defaultdict
import sys, os

def find_by_trial():
    old_stdout = sys.stdout
    sys.stdout = open(os.devnull, 'w')
    results = open("hard.txt", 'w')
    #problems_suite = problem_subset(problem_suite=LMCUT_HARD)
    for (domainname, filepaths), (_, easy_filepaths), (_, medium_filepaths) in zip(LMCUT_SUITE, LMCUT_EASY, LMCUT_MEDIUM):
        old_stdout.write('\n%s (%d)\n' % (domainname, len(filepaths)))
        results.write('        "%s":[' % domainname)
        for problem_id, (problemfile, domainfile) in enumerate(filepaths):
            if (problemfile, domainfile) in easy_filepaths or (problemfile, domainfile) in medium_filepaths :
                continue
            old_stdout.write("%d " % problem_id)
            old_stdout.flush()
    #        result = run_with_timeout(60, None, compareTask, problemfile, domainfile, ['heuristic', 'hmax', 'goalzone', 'cuts', 'pcf', 'relevance'])
            result = 1
            if result is not None:
                results.write("%d, " % problem_id)
            old_stdout.write("ok " if (result is not None) else "no ")
        results.write("],\n")
    sys.stdout = old_stdout

def find_in_result_file(filename):
    def find_index(domain, problem):
        for i, (problemfile, _) in enumerate([paths for (d, paths) in LMCUT_SUITE if d == domain][0]):
            if problemfile == problem:
                return i
    very_easy, easy, medium, hard, very_hard = defaultdict(list),defaultdict(list),defaultdict(list),defaultdict(list),defaultdict(list)
    results = parse_results(filename)
    for domainresult in results:
        for problemresult in domainresult.problemresults:
            time = 0
            for time_name in ('solve_time', 'translation_time', 'relaxation_time', 'relevance_analysis_time'):
                time += problemresult.get(time_name, 0)
            if time == 0:
                time = sys.maxint
            for (limit, reslist) in [(10, very_easy), (60, easy), (300, medium), (600, hard), (sys.maxint, very_hard)]:
                if time <= limit:
                    reslist[domainresult.name].append(find_index(domainresult.name, problemresult.name))
                    break
    for name, reslist in [("search_very_easy", very_easy), ("search_easy", easy), ("search_medium", medium), 
                          ("search_hard", hard), ("search_very_hard", very_hard), ("search_missing", missingresults(results))]:
        print "%s = problem_subset(problems={" % name.upper()
        for domain in sorted(reslist.keys()):
            problems = ", ".join(map(str, sorted(reslist[domain])))
            print '        "%s":[%s],' % (domain, problems)
        print '    })'
        print


if __name__ == "__main__":
    find_in_result_file('../src/results/results.txt')
    print "done"
