#!/usr/bin/python
from problem_suites import LMCUT_SUITE
import argparse, os
from collections import defaultdict

class DomainResults:
    def __init__(self, name):
        self.name = name
        self.problemresults = []
    def __str__(self):
        result = "domain: %s\n" % self.name
        for problemresult in self.problemresults:
            result += str(problemresult)
        return result

class ProblemResults:
    def __init__(self, name, **kwargs):
        self.name = name
        self.values = {}
        # the bool field hmax is there for historical reasons and should be called same_hmax instead
        # use the h_max field instead
        self.known_types = {'hmax':bool, 'goalzone':bool, 'cut':bool,
                            'valid_relevance_analysis':bool,
                            'valid_pcf':bool, 'valid_cut':bool,
                            'heuristic':float, 'h_plus':float, 'h_max':float, 'solve_time':float, 'h_lmcut':float,
                            'translation_time':float, 'relaxation_time':float, 'h_max_time':float, 'h_lmcut_time':float, "h_plus_time":float,"parse_time":float,
                            'relevance_analysis_time':float}
        for (k,v) in kwargs.items():
            self.set(k,v)

    def has(self, key):
        return self.values.has_key(key)
    def get(self, key, default=None):
        if self.values.has_key(key):
            return self.values[key]
        return default
    def set(self, key, value):
        if self.known_types.has_key(key):
            value = self.known_types[key](value)
        self.values[key] = value
    def __str__(self):
        result = "problem: %s\n" % self.name
        for (key, value) in self.values.items():
            result += "%s %s\n" % (str(key), str(value))
        return result

def parse_results(filename):
    results = []
    domain_result = None
    problem_result = None
    for line in open(filename):
        tokens = line.strip().split()
        if not tokens:
            continue
        if len(tokens) == 1:
            print "cannot parse result line", line
            continue
        if tokens[0] == "domain:":
            domain_result = DomainResults(" ".join(tokens[1:]))
            results.append(domain_result)
        elif tokens[0] == "problem:":
            filename = os.path.basename(" ".join(tokens[1:]))
            problem_result = ProblemResults(os.path.splitext(filename)[0])
            domain_result.problemresults.append(problem_result)
        else:
            problem_result.set(tokens[0], " ".join(tokens[1:]))
    return results

def print_statistics(filename, name=None, domains=None, common_problems=None, print_domain_name=True):
    TIMES = ("solve", "translation", "relaxation", "relevance_analysis", "h_max", "h_lmcut", "h_plus", "parse")
    def printResults():
        print "  %s solved %d/%d tasks:" % (name, solved, solved + not_solved)
        for time_name in timedata_counts:
            if aggregated_times[time_name] == 0 or timedata_counts[time_name] == 0:
                continue
            timestr = "    Average %s_time: %f" % (time_name, (aggregated_times[time_name] / float(timedata_counts[time_name])))
            if common_problems is not None:
                timestr += " (%f in common problems)" % (aggregated_times_common[time_name] / float(timedata_counts_common[time_name]))
            print timestr
    if name is None:
        name = filename
    results = parse_results(filename)
    aggregated_times = defaultdict(int)
    timedata_counts = defaultdict(int)
    aggregated_times_common = defaultdict(int)
    timedata_counts_common = defaultdict(int)
    solved = 0
    not_solved = 0
    for domainresults in results:
        # TODO time difference (average, standard deviation, squared relative error?)
        # TODO heuristic differences (average, standard deviation, squared relative error?)
        if domains is not None:
            if len(domains) > 0 and domainresults.name not in domains:
                continue
            aggregated_times = defaultdict(int)
            timedata_counts = defaultdict(int)
            aggregated_times_common = defaultdict(int)
            timedata_counts_common = defaultdict(int)
            solved = 0
            not_solved = 0
        for p in domainresults.problemresults:
            for time_name in TIMES:
                t = p.get("%s_time" % time_name)
                if t is not None:
                    aggregated_times[time_name] += t
                    timedata_counts[time_name] += 1
                    if common_problems is not None and p.name in common_problems:
                        aggregated_times_common[time_name] += t
                        timedata_counts_common[time_name] += 1
            h = p.get("h_plus")
            if h is None:
                not_solved += 1
            else:
                solved += 1
        if domains is not None:
            if print_domain_name:
                print domainresults.name
            printResults()
    if domains is None:
        printResults()

def compare_results(filename0, filename1, name0=None, name1=None, domains=None, verbose=False):
    """
    only domains and problems occurring in both results will be compared
    missing problems are considered untested and will not be compared
    problems without heuristic value are considered unsolved
    problems without solve_time value are ignored in time difference
    if h_max is present in bot files it must be the same
    """
    def printResults(i):
        if additional_solved[i]:
            print "    Solved %d problems not solved by %s" % (len(additional_solved[i]), name[1-i])
            if verbose:
                for (domainname, problemresults, _) in additional_solved[i]:
                    print "        %s %s" % (domainname, problemresults[0].name)
        if slightly_better[i]:
            print "    Solved %d problems slightly better than %s" % (len(slightly_better[i]), name[1-i])
            if verbose:
                for (domainname, problemresults, heuristics) in slightly_better[i]:
                    print "        %s %s (%d instead of %d)" % (domainname, problemresults[0].name, heuristics[i], heuristics[1-i])
        if much_better[i]:
            print "    Solved %d problems better than %s" % (len(much_better[i]), name[1-i])
            if verbose:
                for (domainname, problemresults, heuristics) in much_better[i]:
                    print "        %s %s (%d instead of %d)" % (domainname, problemresults[0].name, heuristics[i], heuristics[1-i])
    filename = (filename0, filename1)
    name = (name0 or filename0, name1 or filename1)
    results0 = parse_results(filename0)
    results1 = parse_results(filename1)
    common_problems = []
    additional_solved = ([], [])
    slightly_better = ([], [])
    much_better = ([], [])
    for domainresults in zipresults(results0, results1):
        if domains is not None:
            if len(domains) > 0 and domainresults[0].name not in domains:
                continue
            common_problems = []
            additional_solved = ([], [])
            slightly_better = ([], [])
            much_better = ([], [])
        for p in zipresults(domainresults[0].problemresults, domainresults[1].problemresults):
            h_max = (p[0].get("h_max"), p[1].get("h_max"))
            if (h_max[0] is not None and h_max[1] is not None and h_max[0] != h_max[1]):
                print "Different hmax values (%d, %d) for %s in %s" % (h_max[0], h_max[1], p[0].name, domainresults[0].name)
            h = (p[0].get("h_plus"), p[1].get("h_plus"))
            if h == (None, None):
                continue
            if h[0] is not None and h[1] is not None:
                common_problems.append(p[0].name)
            for i in (0,1):
                if h[i] is None:
                    continue
                if h[i-1] is None:
                    additional_solved[i].append((domainresults[0].name, p, h))
                elif h[i] == h[1-i] + 1 and h[i] != float("inf"):
                    slightly_better[i].append((domainresults[0].name, p, h))
                elif h[i] > h[1-i] + 1:
                    much_better[i].append((domainresults[0].name, p, h))
        if domains is not None:
            print domainresults[0].name
            for i in (0,1):
                print_statistics(filename[i], name[i], domains=[domainresults[0].name], common_problems=common_problems, print_domain_name=False)
                printResults(i)
    if domains is None:
        for i in (0,1):
            print_statistics(filename[i], name[i], common_problems=common_problems)
            printResults(i)

def zipresults(results1, results2):
    map1 = {result.name:result for result in results1}
    map2 = {result.name:result for result in results2}
    common_keys = set(map1) & set(map2)
    for key in sorted(common_keys):
        yield (map1[key], map2[key])

def mergeresults(*results):
    maps = [{domainresult.name:domainresult for domainresult in domainresults} 
            for domainresults in results]
    domain_names = sorted(set([domainresult.name for domainresults in results
                               for domainresult in domainresults]))
    merged_results = []
    for domain_name in domain_names:
        merged_domain_results = DomainResults(domain_name)
        merged_results.append(merged_domain_results)
        for domainresult in [resultmap[domain_name] for resultmap in maps if resultmap.has_key(domain_name)]:
            for problemresult in domainresult.problemresults:
                for existing in merged_domain_results.problemresults:
                    assert problemresult.name != existing.name
                merged_domain_results.problemresults.append(problemresult)
        merged_domain_results.problemresults.sort(key=lambda res: res.name)
    return merged_results

def mergeresultfiles(mergedfilename, *filenames):
    results = map(parse_results, filenames)
    mergedresults = mergeresults(*results)
    mergedresultsfile = open(mergedfilename, 'w')
    for result in mergedresults:
        mergedresultsfile.write(str(result))
    mergedresultsfile.close()

def missingresults(results):
    missing = defaultdict(list)
    for (domain, paths) in LMCUT_SUITE:
        domainresult = next((r for r in results if r.name == domain), None)
        if domainresult is None:
            missing[domain] = range(len(paths))
            continue
        for i, (problemfile, _) in enumerate(paths):
            problemresult = next((r for r in domainresult.problemresults if r.name == problemfile), None)
            if problemresult is None:
                problemname = os.path.splitext(os.path.basename(problemfile))[0]
                problemresult = next((r for r in domainresult.problemresults if r.name == problemname), None)
            if problemresult is None:
                missing[domain].append(i)
    return missing

def printmissingresults(filename):
    missing = missingresults(parse_results(filename))
    for domain in sorted(missing.keys()):
        problems = ", ".join(map(str, sorted(missing[domain])))
        print '        "%s":[%s],' % (domain, problems)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Evaluate result files')
    group = parser.add_mutually_exclusive_group()
    group.add_argument('-m', '--merge', nargs="+")
    group.add_argument('-c', '--compare', nargs=2)
    group.add_argument('-p', '--printstatstics')
    group.add_argument('-pm', '--printmissing')
    parser.add_argument('-n', '--names', nargs=2)
    parser.add_argument('-d', '--domains', nargs="*")
    parser.add_argument('-v', '--verbose', action='store_true')
    args = parser.parse_args()
    if args.merge:
        mergeresultfiles(args.merge[-1], *args.merge[:-1])
    elif args.compare:
        if not args.names:
            args.names = [None, None]
        compare_results(args.compare[0], args.compare[1], args.names[0], args.names[1], args.domains, args.verbose)
    elif args.printstatstics:
        print_statistics(args.printstatstics, domains=args.domains)
    else:
        printmissingresults(args.printmissing)

