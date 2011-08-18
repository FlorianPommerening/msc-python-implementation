#!/usr/bin/python
from problem_suites import LMCUT_SUITE, domain_size
from known_hplus import KNOWN_HPLUS, UNKNOWN_HPLUS
from collections import defaultdict

import sys, argparse, os, tempfile, shutil, subprocess
from math import log, exp
from random import random

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
                            'h_plus_lower_bound':float, 'h_plus_upper_bound':float,
                            'translation_time':float, 'relaxation_time':float, 'h_max_time':float, 'h_lmcut_time':float, "h_plus_time":float,"parse_time":float,
                            'bnb_expansions':int,'evaluations':int,'expanded':int, 'generated':int,
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
            try:
                value = self.known_types[key](value)
            except:
                print "Could not parse:", self.name, key, value

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

def print_averaged_statistics(filename, name=None, domains=None, common_problems=None, print_domain_name=True):
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

def compare_averaged_results(filename0, filename1, name0=None, name1=None, domains=None, verbose=False):
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
                print_averaged_statistics(filename[i], name[i], domains=[domainresults[0].name], common_problems=common_problems, print_domain_name=False)
                printResults(i)
    if domains is None:
        for i in (0,1):
            print_averaged_statistics(filename[i], name[i], common_problems=common_problems)
            printResults(i)


def loginterpolate(x, min_x, min_y, max_x, max_y):
    if x <= min_x:
        return min_y
    if x >= max_x:
        return max_y
    
    return (max_y - min_y) * (
                              (log(x)     - log(max_x)) / 
                              (log(min_x) - log(max_x)) 
                             ) + min_y
    
def compare_results(filenames, names=None, domains=None, times=None, format='console', verbose=False):
    """
    evaluation by scoring function:
      time: sum of all 'times' logarithmically scaled between 1 second or below (100 points) and 1800 seconds or above (0 points)
      coverage: unsolved (0 points) or solved (100 points)
      expansions: number of expansions logarithmically scaled between 100 or below (100 points) and 1000000 or above (0 points)
    """
    if names is None:
        names = []
    if times is None:
        times = ["translation", "parse", "relaxation", "relevance_analysis", "h_plus"]
    warnings = set()
    for i in range(len(names), len(filenames)):
        dirname = os.path.basename(os.path.dirname(filenames[i]))
        names.append(dirname)

    # domainname -> problemname -> (h, discovered_by)
    new_hplus_values = defaultdict(dict)
    # domainname -> problemname -> (best discovered lower bound, best discovered upper bound) 
    new_hplus_bounds = defaultdict(dict)
    # domainname -> name -> score
    time_scores = defaultdict(dict)
    coverage_scores = defaultdict(dict)
    expansion_scores = defaultdict(dict)
    # domainname -> problemname -> [score_1, score_2, ..., score_n]
    time_score_plot = defaultdict(lambda : defaultdict(lambda : [0 for i in xrange(len(filenames))]))
    expansion_score_plot = defaultdict(lambda : defaultdict(lambda : [0 for i in xrange(len(filenames))]))

    for i, (filename, name) in enumerate(zip(filenames, names)): 
        time_score = 0
        coverage_score = 0
        expansion_score = 0
        results = parse_results(filename)
        for domainresult in results:
            domainname = domainresult.name
            if domains is not None:
                if len(domains) > 0 and domainname not in domains:
                    continue
            time_score_sum = 0
            coverage_score_sum = 0
            expansion_score_sum = 0
            for p in domainresult.problemresults:
                h = p.get("h_plus")
                if h is None:
                    # check if better bounds were found
                    (new_lower_bound, new_upper_bound) = (p.get("h_plus_lower_bound", 0), p.get("h_plus_upper_bound", float("inf")))
                    if new_hplus_bounds[domainname].has_key(p.name):
                        (old_lower_bound, old_upper_bound) = new_hplus_bounds[domainname][p.name]
                    elif UNKNOWN_HPLUS[domainname].has_key(p.name):
                        (old_lower_bound, old_upper_bound) = UNKNOWN_HPLUS[domainname][p.name]
                    else:
                        (old_lower_bound, old_upper_bound) = (0, float("inf"))
                    if new_lower_bound > old_lower_bound or new_upper_bound < old_upper_bound:
                        new_hplus_bounds[domainname][p.name] = (max(old_lower_bound, new_lower_bound), min(old_upper_bound, new_upper_bound))
                    time_score_plot[domainname][p.name][i] = 0
                    expansion_score_plot[domainname][p.name][i] = 0
                    continue
                if KNOWN_HPLUS[domainname].has_key(p.name):
                    if KNOWN_HPLUS[domainname][p.name] != h:
                        warnings.add("!!! Invalid h+ value for %s - %s: DB said %d but %s said %d" % (
                                     domainname, p.name, KNOWN_HPLUS[domainname][p.name], name, h))
                else: # h+ not known yet
                    if UNKNOWN_HPLUS[domainname].has_key(p.name):
                        (best_lower_bound, best_upper_bound) = UNKNOWN_HPLUS[domainname][p.name]
                        if h < best_lower_bound or h > best_upper_bound:
                            warnings.add("!!! Invalid h+ value for %s - %s: DB said (%d, %d) but %s said %d" % (
                                         domainname, p.name, best_lower_bound, best_upper_bound, name, h))
                    if new_hplus_values[domainname].has_key(p.name) and new_hplus_values[domainname][p.name][0] != h:
                        old_h, old_name = new_hplus_values[domainname][p.name]
                        warnings.add("!!! Invalid h+ value for %s - %s: %s said %d but %s said %d" % (
                                     domainname, p.name, old_name, old_h, name, h))
                    new_hplus_values[domainname][p.name] = (h, name)
                time_sum = 0
                for time in times:
                    if not p.has("%s_time" % time) and h < float("inf"):
                        warnings.add("%s is missing %s_time" % (name, time))
                        continue
                    time_sum += p.get("%s_time" % time, 0)
                expansions = 1000000
                if p.has("bnb_expansions"):
                    expansions = p.get("bnb_expansions")
                elif h == float("inf"):
                    expansions = 0
                elif p.has("expanded"):
                    expansions = p.get("expanded")
                elif p.has("evaluations"):
                    expansions = p.get("evaluations")
                else:
                    warnings.add("%s is missing bnb_expansions" % name)
                problem_time_score = loginterpolate(time_sum, 1, 100, 1800, 0)
                problem_expansion_score = loginterpolate(expansions, 100, 100, 1000000, 0)
                time_score_sum += problem_time_score
                coverage_score_sum += 100
                expansion_score_sum += problem_expansion_score
                
                time_score_plot[domainname][p.name][i] = problem_time_score
                expansion_score_plot[domainname][p.name][i] = problem_expansion_score
            domainsize = domain_size(domainname) 
            time_score += time_score_sum / float(domainsize)    
            coverage_score += coverage_score_sum / float(domainsize)
            expansion_score += expansion_score_sum / float(domainsize)    
            if domains is not None:
                time_scores[domainname][name] = time_score
                coverage_scores[domainname][name] = coverage_score
                expansion_scores[domainname][name] = expansion_score
                time_score = 0
                coverage_score = 0
                expansion_score = 0
        if domains is None:
            nDomains = len(results)
            time_scores["all"][name] = time_score / float(nDomains)
            coverage_scores["all"][name] = coverage_score / float(nDomains)
            expansion_scores["all"][name] = expansion_score / float(nDomains)
    for warning in sorted(warnings):
        print warning
    for domainname, problems in sorted(new_hplus_values.items()):
        print "New h+ values in '%s':" % domainname
        for problem, (h, _) in sorted(problems.items()):
            print "            '%s':%s," % (problem, h)
    for domainname, problems in sorted(new_hplus_bounds.items()):
        unknown_problems = {pname:bound for (pname,bound) in problems.items() if not KNOWN_HPLUS[domainname].has_key(pname)}
        if not unknown_problems:
            continue
        print "New h+ bounds in '%s':" % domainname
        for problem, (lower, upper) in sorted(unknown_problems.items()):
            print "            '%s':(%s,%s)," % (problem, str(int(lower)), 'float("inf")' if upper == float("inf") else str(int(upper)))
    if format == 'console' or format == 'textable':
        if format == 'console':
            header = r""
            domainheader = "\n%s (%d tasks)"
            nodomainheader = r""
            columnheader = r"%-20s    %10s    %15s    %15s" % ("Name", "Time score", "Coverage score", "Expansion score")
            line = r"%-20s    %10.3f    %15.3f    %15.3f"
            footer = r""
        if format == 'textable':
            header = r"""\documentclass{article}
\usepackage{booktabs}

\begin{document}
\begin{tabular}{lrrr} \toprule
    %-20s &  %10s &  %15s &  %15s \\""" % ("Name", "Time score", "Coverage score", "Expansion score")
            domainheader = r"    \midrule \multicolumn{4}{l}{%s domain (%d tasks)} \\ \midrule"
            nodomainheader = r"\midrule"
            columnheader = ""
            line = r"    %-20s &  %10.3f &  %15.3f &  %15.3f \\"
            footer = "    \\bottomrule\n\\end{tabular}\n\\end{document}"
        if header:
            print header
        for domainname in sorted(time_scores.iterkeys()):
            if domainname != "all":
                print domainheader % (domainname, domain_size(domainname))
            elif nodomainheader:
                print nodomainheader
            if columnheader:
                print columnheader
            for name in names:
                print line % (name[:20], time_scores[domainname][name], 
                                         coverage_scores[domainname][name],
                                         expansion_scores[domainname][name])
        if footer:
            print footer

    elif format == 'texplottime' or format == 'texplotexpansions':
        if format == 'texplottime':
            heading = "Time score"
            data = time_score_plot
        elif format == 'texplotexpansions':
            heading = "Expansion score"
            data = expansion_score_plot

        # bining of data
        binsize = [[0 for _ in xrange(101)] for _ in xrange(101)]
        for (domainname, domain_scores) in sorted(data.iteritems()):
            for (_, scores) in sorted(domain_scores.iteritems()):
                binsize[int(scores[0])][int(scores[1])] += 1

        plotfile = open('plot.data', 'w')
        print "Generating plot data"
        plotfile.write("# %s\n" % heading)
        for (domainname, domain_scores) in sorted(data.iteritems()):
            plotfile.write("# %s domain\n" % domainname)
            for (_, scores) in sorted(domain_scores.iteritems()):
                neighbors = binsize[int(scores[0])][int(scores[1])]
                if neighbors > 1:
                    print_scores = [int(scores[0]) + random() -0.5, int(scores[1]) + random() -0.5]
                else:
                    print_scores = [int(scores[0]), int(scores[1])]
                plotfile.write(" ".join(map(str, print_scores + [neighbors])) + '\n')
        fnull = open(os.devnull, 'w')
        plotfile.close()
        tmpdir = tempfile.mkdtemp()
        shutil.copy('/home/flogo/masterthesis/implementation/src/benchmark/scatterplot.tex', tmpdir + '/scatterplot.tex')
        shutil.copy('plot.data', tmpdir + '/plot.data')
        owd = os.getcwd()
        os.chdir(tmpdir)
        print "Compiling scatter plot"
        subprocess.call(['pdflatex', '%s/scatterplot.tex' % tmpdir], stdout=fnull, stderr=fnull)
        os.chdir(owd)
        shutil.copy(tmpdir + '/scatterplot.pdf', 'scatterplot.pdf')
        subprocess.Popen(['evince', 'scatterplot.pdf'], stdout=fnull, stderr=fnull)
        shutil.rmtree(tmpdir)
        fnull.close()
        


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

def add_hplus_to_statistics(filename):
    results = parse_results(filename)
    for domainresult in results:
        domainname = domainresult.name
        for p in domainresult.problemresults:
            if KNOWN_HPLUS[domainname].has_key(p.name):
                p.set('h_plus', KNOWN_HPLUS[domainname][p.name])
    resultsfile = open(filename, 'w')
    for result in results:
        resultsfile.write(str(result))
    resultsfile.close()

def exportCSV(filename, columns):
    results = parse_results(filename)
    for domainresult in results:
        domainname = domainresult.name
        for p in domainresult.problemresults:
            line = []
            for column in columns:
                if column == "domain":
                    line.append(domainname)
                elif column == "problem":
                    line.append(p.name)
                else:
                    line.append(str(p.get(column)))
            print ", ".join(line)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Evaluate result files')
    group = parser.add_mutually_exclusive_group()
    group.add_argument('-m', '--merge', nargs="+")
    group.add_argument('-c', '--compare', nargs="+")
    group.add_argument('-p', '--printstatstics')
    group.add_argument('-pm', '--printmissing')
    parser.add_argument('-n', '--names', nargs="+")
    parser.add_argument('-t', '--times', nargs="+")
    parser.add_argument('-d', '--domains', nargs="*")
    parser.add_argument('-v', '--verbose', action='store_true')
    parser.add_argument('-f', '--format', choices=['console', 'textable', 'texplottime', 'texplotexpansions'], default='console')

    args = parser.parse_args()
    if args.merge:
        mergeresultfiles(args.merge[-1], *args.merge[:-1])
    elif args.compare:
        compare_results(args.compare, args.names, args.domains, args.times, args.format, args.verbose)
    elif args.printstatstics:
        print_averaged_statistics(args.printstatstics, domains=args.domains)
    else:
        printmissingresults(args.printmissing)

