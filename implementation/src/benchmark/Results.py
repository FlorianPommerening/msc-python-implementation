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
        self.known_types = {'hmax':bool, 'goalzone':bool, 'cut':bool,
                            'valid_relevance_analysis':bool,
                            'valid_pcf':bool, 'valid_cut':bool,
                            'heuristic':float, 'solve_time':float}
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
            problem_result = ProblemResults(" ".join(tokens[1:]))
            domain_result.problemresults.append(problem_result)
        else:
            problem_result.set(tokens[0], " ".join(tokens[1:]))
    return results

def compare_results(filename0, filename1, name0=None, name1=None):
    """
    only domains and problems occurring in both results will be compared
    missing problems are considered untested and will not be compared
    problems without heuristic value are considered unsolved
    problems without solve_time value are ignored in time difference
    """
    if name0 is None:
        name0 = filename0
    if name1 is None:
        name1 = filename1
    name = (name0, name1)
    results0 = parse_results(filename0)
    results1 = parse_results(filename1)
    for domainresults in zipresults(results0, results1):
        print domainresults[0].name
        # TODO time difference (average, standard deviation, squared relative error?)
        # TODO heuristic differences (average, standard deviation, squared relative error?)
        aggregated_time = [0, 0]
        timedata_count = 0
        additional_solved = ([], [])
        slightly_better = ([], [])
        much_better = ([], [])
        for p in zipresults(domainresults[0].problemresults, domainresults[1].problemresults):
            h = (p[0].get("heuristic"), p[1].get("heuristic"))
            if h == (None, None):
                continue
            t = (p[0].get("solve_time"), p[1].get("solve_time"))
            if t[0] is not None and t[1] is not None:
                aggregated_time[0] += t[0]
                aggregated_time[1] += t[1]
                timedata_count += 1
            for i in (0,1):
                if h[i] is None:
                    continue
                if h[i-1] is None:
                    additional_solved[i].append(p[i])
                elif h[i] == h[1-i] + 1:
                    slightly_better[i].append(p[i])
                elif h[i] > h[1-i] + 1:
                    much_better[i].append(p[i])
        for i in (0,1):
            print "  %s:" % name[i]
            if timedata_count:
                print "    Average time: %f" % (aggregated_time[i] / float(timedata_count))
            if additional_solved[i]:
                print "    Solved %d problems not solved by %s" % (len(additional_solved[i]), name[1-i])
            if slightly_better[i]:
                print "    Solved %d problems slightly better than %s" % (len(slightly_better[i]), name[1-i])
            if much_better[i]:
                print "    Solved %d problems better than %s" % (len(much_better[i]), name[1-i])

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
        for domainresult in [resultmap[domain_name] for resultmap in maps]:
            for problemresult in domainresult.problemresults:
                for existing in merged_domain_results.problemresults:
                    assert problemresult.name != existing.name
                merged_domain_results.problemresults.append(problemresult)
    return merged_results

def mergeresultfiles(mergedfilename, *filenames)
    results = map(parse_results, filenames)
    mergedresults = mergeresults(*results)
    mergedresultsfile = open(mergedfilename, 'w')
    for result in mergedresults:
        mergedresultsfile.write(str(result))
    mergedresultsfile.close()

if __name__ == '__main__':
    mergeresultfiles("../results/malte-equality.txt", "../results/malte-equality-easy.txt", "../results/malte-equality-medium.txt", "../results/malte-equality-hard.txt")
    mergeresultfiles("../results/without-equality.txt", "../results/without-equality-easy.txt", "../results/without-equality-medium.txt", "../results/without-equality-hard.txt")
    compare_results('../results/malte-equality.txt', '../results/without-equality.txt', 'with-equality', 'without-equality')
