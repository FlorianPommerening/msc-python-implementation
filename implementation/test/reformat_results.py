#!/usr/bin/python
from benchmark.Results import DomainResults, ProblemResults
import sys

def old_format_parse_results(filename):
    results = []
    problem_result_list = []
    domainname = None
    problem_results = None
    for line in open(filename):
        tokens = line.strip().split()
        if not tokens:
            continue
        if tokens[0] == "domain:":
            if domainname is not None:
                results.append(DomainResults(domainname, problem_result_list))
            domainname = " ".join(tokens[1:])
            problem_result_list = []
        elif tokens[0] == "problem:":
            if problem_results is not None:
                problem_result_list.append(problem_results)
            problemfile = " ".join(tokens[1:])
            problem_results = ProblemResults(problemfile)
        elif len(tokens) == 4:
            (my_t, malte_t) = map(float, tokens[0:2])
            if tokens[2] == "inf":
                my_h = -1
            else:
                my_h = int(tokens[2])
            if tokens[3] == "inf":
                malte_h = -1
            else:
                malte_h = int(tokens[3])
            problem_results.set("solve_time", my_t)
            problem_results.set("heuristic", my_h)
            problem_results.set("malte_solve_time", malte_t)
            problem_results.set("malte_heuristic", malte_h)
        else:
            key = tokens[0]
            value = " ".join(tokens[1:])
            if key in ('hmax', 'goalzone', 'cut'):
                value = (value == "True")
            problem_results.set(key, value)
    if problem_results is not None:
        problem_result_list.append(problem_results)
    if domainname is not None:
        results.append(DomainResults(domainname, problem_result_list))
    return results

def reformat_results(filename):
    results = old_format_parse_results(filename)
    new_file = open(filename + 'new', 'w')
    for domain_results in results:
        new_file.write("domain: %s\n" % domain_results.name)
        for problem_result in domain_results.problemresults:
            new_file.write(str(problem_result))

if __name__ == "__main__":
    reformat_results(sys.argv[1])