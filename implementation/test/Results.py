# this whole file is an ugly HACK

class DomainResults:
    def __init__(self, name, problemresults):
        self.name = name
        self.problemresults = problemresults
        aggregatedtimedifference = 0
        aggregatedspeedup = 0
        aggregatedheuristicdifference = 0
        self.maxheuristicdifference = 0
        self.minheuristicdifference = 0
        count = 0
        self.good_hmax = None
        self.good_goalzone = None
        for res in problemresults.values():
            if not res.hasTimes:
                continue
            count += 1
            dt = res.malte_t - res.my_t  # smaller time is better -> positive value
            dh = res.my_h - res.malte_h  # larger heuristic is better -> positive value
            aggregatedtimedifference += dt
            aggregatedheuristicdifference  += dh
            self.maxheuristicdifference = max(self.maxheuristicdifference, dh)
            self.minheuristicdifference = min(self.minheuristicdifference, dh)
            if res.my_t == 0:
                aggregatedspeedup += 1
            else:
                aggregatedspeedup += res.malte_t / res.my_t
            if res.hmax is not None:
                if self.good_hmax is None:
                    self.good_hmax = True
                self.good_hmax &= res.hmax
            if res.goalzone is not None:
                if self.good_goalzone is None:
                    self.good_goalzone = True
                self.good_goalzone &= res.goalzone
        self.hasTimes = False
        if count > 0:
            self.hasTimes = True
            self.averagetimedifference = aggregatedtimedifference / count
            self.averagespeedup = aggregatedspeedup / count
            self.averageheuristicdifference = aggregatedheuristicdifference / count

class ProblemResults:
    def __init__(self, name, times=None, hmax=None, goalzone=None):
        self.name = name
        self.hasTimes = False
        if times is not None:
            self.hasTimes = True
            (my_t, malte_t, my_h, malte_h) = times
            self.my_t = float(my_t)
            self.malte_t = float(malte_t)
            self.my_h = int(my_h)
            self.malte_h = int(malte_h)
        if hmax is not None:
            self.hmax = (hmax == "True")
        else:
            self.hmax = None
        if goalzone is not None:
            self.goalzone = (goalzone == "True")
        else:
            self.goalzone = None

    def __str__(self):
        result = "problem: %s\n" % self.name
        if self.hasTimes:
            result += "%s %s %s %s\n" % (self.my_t, self.malte_t, self.my_h, self.malte_h)
        if self.hmax is not None:
            result += "hmax %s\n" % self.hmax
        if self.goalzone is not None:
            result += "goalzone %s\n" % self.goalzone
        return result
        


def parse_results(filename):
    results = []
    problemresults = {}
    domainname = None
    problemfile = None
    times = None
    hmax = None
    goalzone = None
    for line in open(filename):
        tokens = line.strip().split()
        if not tokens:
            continue
        if tokens[0] == "domain:":
            if domainname is not None:
                results.append(DomainResults(domainname, problemresults))
            domainname = " ".join(tokens[1:])
            problemresults = {}
        elif tokens[0] == "problem:":
            if problemfile is not None:
                problemresults[problemfile] = ProblemResults(problemfile, times, hmax, goalzone)
            problemfile = " ".join(tokens[1:])
            times = None
            hmax = None
            goalzone = None
        elif tokens[0] == "hmax" and len(tokens) == 2:
            hmax = tokens[1]
        elif tokens[0] == "goalzone" and len(tokens) == 2:
            goalzone = tokens[1]
        elif len(tokens) == 4:
            times = tokens 
        else:
            print "cannot parse result line", line
            continue
    if problemfile is not None:
        problemresults[problemfile] = ProblemResults(problemfile, times, hmax, goalzone)
    if domainname is not None:
        results.append(DomainResults(domainname, problemresults))
    return results

def print_results(results):
    for domainresults in results: 
        if domainresults.hasTimes:
            print domainresults.name, " (td: %s, su: %s, hd: %s [%s - %s])" % (
                               str(domainresults.averagetimedifference * 1000),
                               str(domainresults.averagespeedup),
                               str(domainresults.averageheuristicdifference),
                               str(domainresults.minheuristicdifference),
                               str(domainresults.maxheuristicdifference),
                              )
        else:
            print "no time entry for domain:", domainresults.name
        if domainresults.good_hmax is not None and not domainresults.good_hmax:
            print "  has h^max errors"
        if domainresults.good_goalzone is not None and not domainresults.good_goalzone:
            print "  has different goalzones"

