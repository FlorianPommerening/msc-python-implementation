#!/usr/bin/python2.7
from problem_suites import LMCUT_SUITE, domain_size, ZERO_COST_SUITE
from known_hplus import KNOWN_HPLUS, UNKNOWN_HPLUS, KNOWN_HPLUS_FLO, UNKNOWN_HPLUS_FLO
from collections import defaultdict

import sys, argparse, os, tempfile, shutil, subprocess, re
from math import log, exp, sqrt
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
                            'bnb_expansions':int,'bnb_expansions_last_layer':int,'evaluations':int,'expanded':int, 'generated':int,
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
        for (key, value) in sorted(self.values.items()):
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


def loginterpolate(x, min_x, max_x, min_score, max_score):
    if x <= min_x:
        return max_score
    if x >= max_x:
        return min_score
    
    return (max_score - min_score) * (
                              (log(x)     - log(max_x)) / 
                              (log(min_x) - log(max_x)) 
                             ) + min_score
    
def compare_results(filenames, names=None, domains=None, times=None, format='console', verbose=False, timeout=1800):
    """
    evaluation by scoring function:
      time: sum of all 'times' logarithmically scaled between 1 second or below (100 points) and timeout seconds or above (0 points)
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
        if len(dirname) == 1 or dirname == "results":
            dirname = os.path.basename(os.path.dirname(os.path.dirname(filenames[i])))
        names.append(" ".join(dirname.split(" - ")))

    # name -> [filename run1, filename run2, ...]
    experiments = defaultdict(list)
    for name, filename in zip(names, filenames):
        experiments[name].append(filename)

    first_exp_name = names[0]
    for name in names:
        if name != first_exp_name:
            second_exp_name = name
            break
    else:
        second_exp_name = first_exp_name
        print "only one experiment, nothing to compare"

    # domainname -> problemname -> (h, discovered_by)
    new_hplus_values = defaultdict(dict)
    # domainname -> problemname -> (best discovered lower bound, best discovered upper bound) 
    new_hplus_bounds = defaultdict(dict)
    # domainname -> filename -> score
    time_scores = defaultdict(dict)
    coverage_scores = defaultdict(dict)
    expansion_scores = defaultdict(dict)
    # domainname -> problemname -> filename -> score
    time_score_plot_by_filename = defaultdict(lambda : defaultdict(dict))
    expansion_score_plot_by_filename = defaultdict(lambda : defaultdict(dict))

    for i, filename in enumerate(filenames):
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
                    time_score_plot_by_filename[domainname][p.name][filename] = 0
                    expansion_score_plot_by_filename[domainname][p.name][filename] = 0
                    continue
                if KNOWN_HPLUS[domainname].has_key(p.name):
                    if KNOWN_HPLUS[domainname][p.name] != h:
                        warnings.add("!!! Invalid h+ value for %s - %s: DB said %s but %s said %s" % (
                                     domainname, p.name, str(KNOWN_HPLUS[domainname][p.name]), filename, str(h)))
                else: # h+ not known yet
                    if UNKNOWN_HPLUS[domainname].has_key(p.name):
                        (best_lower_bound, best_upper_bound) = UNKNOWN_HPLUS[domainname][p.name]
                        if h < best_lower_bound or h > best_upper_bound:
                            warnings.add("!!! Invalid h+ value for %s - %s: DB said (%s, %s) but %s said %s" % (
                                         domainname, p.name, str(best_lower_bound), str(best_upper_bound), filename, str(h)))
                    if new_hplus_values[domainname].has_key(p.name) and new_hplus_values[domainname][p.name][0] != h:
                        old_h, old_name = new_hplus_values[domainname][p.name]
                        warnings.add("!!! Invalid h+ value for %s - %s: %s said %s but %s said %s" % (
                                     domainname, p.name, old_name, str(old_h), filename, str(h)))
                    new_hplus_values[domainname][p.name] = (h, filename)
                problem_time_score = None
                if p.get("time_averaged_over") is not None:
                    time_averaged_over = set(p.get("time_averaged_over").split())
                    if time_averaged_over != set(times):
                        warnings.add("trying to get time score for averaged times [%s] but file has times for [%s]" % (" ".join(times), " ".join(time_averaged_over)))
                    elif float(p.get("time_averaged_timeout")) != timeout:
                        warnings.add("trying to get time score for averaged times with timeout %s but file used timeout %s" % (timeout, p.get("time_averaged_timeout")))
                    problem_time_score = float(p.get("averaged_time_score"))
                if problem_time_score is None:
                    time_sum = 0
                    for time in times:
                        if not p.has("%s_time" % time) and h < float("inf"):
                            warnings.add("%s is missing %s_time" % (filename, time))
                            continue
                        time_sum += p.get("%s_time" % time, 0)
                    if time_sum >= timeout:
                        time_score_plot_by_filename[domainname][p.name][filename] = 0
                        expansion_score_plot_by_filename[domainname][p.name][filename] = 0
                        continue
                    problem_time_score = loginterpolate(time_sum, 1, timeout, 0, 100)

                if p.get("averaged_expansion_score") is not None:
                    problem_expansion_score = float(p.get("averaged_expansion_score"))
                else:
                    expansions = 1000000
                    if p.get("averaged_expansions"):
                        expansions = float(p.get("averaged_expansions"))
                    elif p.has("bnb_expansions"):
                        expansions = p.get("bnb_expansions")
                    elif h == float("inf"):
                        expansions = 0
                    elif p.has("expanded"):
                        expansions = p.get("expanded")
                    elif p.has("evaluations"):
                        expansions = p.get("evaluations")
                    else:
                        warnings.add("%s is missing bnb_expansions" % filename)
                    problem_expansion_score = loginterpolate(expansions, 100, 1000000, 0, 100)

                time_score_sum += problem_time_score
                coverage_score_sum += 100 * float(p.get("solve_chance", 1))
                expansion_score_sum += problem_expansion_score
                
                time_score_plot_by_filename[domainname][p.name][filename] = problem_time_score
                expansion_score_plot_by_filename[domainname][p.name][filename] = problem_expansion_score
            domainsize = domain_size(domainname) 
            time_score += time_score_sum / float(domainsize)    
            coverage_score += coverage_score_sum / float(domainsize)
            expansion_score += expansion_score_sum / float(domainsize)    
            if domains is not None:
                time_scores[domainname][filename] = time_score
                coverage_scores[domainname][filename] = coverage_score
                expansion_scores[domainname][filename] = expansion_score
                time_score = 0
                coverage_score = 0
                expansion_score = 0
        if domains is None:
            nDomains = len(results)
            time_scores["all"][filename] = time_score / float(nDomains)
            coverage_scores["all"][filename] = coverage_score / float(nDomains)
            expansion_scores["all"][filename] = expansion_score / float(nDomains)
    for warning in sorted(warnings):
        print warning
    for domainname, problems in sorted(new_hplus_values.items()):
        print "New h+ values in '%s':" % domainname
        sortable_problems = [(re.findall("probfreecell", p), map(int, re.findall(r"\d+", p)), p, h) for (p, (h, _)) in problems.items()]
        for _, _, problem, h in sorted(sortable_problems):
            print "            '%s':%s," % (problem, h)
    for domainname, problems in sorted(new_hplus_bounds.items()):
        unknown_problems = {pname:bound for (pname,bound) in problems.items() if not KNOWN_HPLUS[domainname].has_key(pname)}
        if not unknown_problems:
            continue
        print "New h+ bounds in '%s':" % domainname
        print "        '%s':{" % domainname
        sortable_problems = [(re.findall("probfreecell", p), map(int, re.findall(r"\d+", p)), p, l, u) for (p, (l, u)) in unknown_problems.items()]
        for _, _, problem, lower, upper in sorted(sortable_problems):
            print "            '%s':(%s,%s)," % (problem, str(int(lower)), 'float("inf")' if upper == float("inf") else str(int(upper)))
        print "        },"

    # domainname -> experimentname -> score
    averaged_time_scores = defaultdict(dict)
    averaged_coverage_scores = defaultdict(dict)
    averaged_expansion_scores = defaultdict(dict)
    std_dev_time_scores = defaultdict(dict)
    std_dev_coverage_scores = defaultdict(dict)
    std_dev_expansion_scores = defaultdict(dict)
    has_variances = False
    for domainname in time_scores.keys():
        for name, runs in experiments.items():
            run_time_scores = [time_scores[domainname][filename] for filename in runs]
            time_average = sum(run_time_scores) / float(len(runs))
            averaged_time_scores[domainname][name] = time_average
            run_coverage_scores = [coverage_scores[domainname][filename] for filename in runs]
            coverage_average = sum(run_coverage_scores) / float(len(runs))
            averaged_coverage_scores[domainname][name] = coverage_average
            run_expansion_scores = [expansion_scores[domainname][filename] for filename in runs]
            expansion_average = sum(run_expansion_scores) / float(len(runs))
            averaged_expansion_scores[domainname][name] = expansion_average

            if len(runs) == 1:
                std_dev_time_scores[domainname][name] = "-"
                std_dev_coverage_scores[domainname][name] = "-"
                std_dev_expansion_scores[domainname][name] = "-"
            else: # (x_i - mu)^2 / (n-1)
                has_variances = True
                std_dev_time_scores[domainname][name] = "%5.3f" % sqrt((sum([(t - time_average) **2 for t in run_time_scores])) / float(len(runs) -1))
                std_dev_coverage_scores[domainname][name] = "%5.3f" % sqrt((sum([(t - coverage_average) **2 for t in run_coverage_scores])) / float(len(runs) -1))
                std_dev_expansion_scores[domainname][name] = "%5.3f" % sqrt((sum([(t - expansion_average) **2 for t in run_expansion_scores])) / float(len(runs) -1))

    # domainname -> problemname -> [averaged score exp1, averaged score exp2]
    time_score_plot_averaged = defaultdict(lambda : defaultdict(list))
    compare_domains = defaultdict(set)
    compatible = True
    for d, domain_scores_filename in time_score_plot_by_filename.items():
        for p, problem_scores_filename in domain_scores_filename.items():
            if time_score_plot_by_filename[d][p].has_key(experiments[first_exp_name][0]):
                compare_domains[d].add(p)
                for name in (first_exp_name, second_exp_name):
                    for f in experiments[name]:
                        if not time_score_plot_by_filename[d][p].has_key(f):
                            compatible = False
    if not compatible:
        print "Experiments use different domains and may not be comparable."
    for d, compare_tasks in compare_domains.items():
        for p in compare_tasks:
            for name in (first_exp_name, second_exp_name):
                run_scores = []
                for f in experiments[name]:
                    if time_score_plot_by_filename[d][p].has_key(f):
                        run_scores.append(time_score_plot_by_filename[d][p][f])
                time_score_plot_averaged[d][p].append(sum(run_scores) / float(len(run_scores)))
    expansion_score_plot_averaged = defaultdict(lambda : defaultdict(list))
    for d, compare_tasks in compare_domains.items():
        for p in compare_tasks:
            for name in (first_exp_name, second_exp_name):
                run_scores = [expansion_score_plot_by_filename[d][p][f] for f in experiments[name]]
                expansion_score_plot_averaged[d][p].append(sum(run_scores) / float(len(run_scores)))



    if format == 'console' or format == 'textable':
        if format == 'console':
            header = r""
            domainheader = "\n%s (%d tasks)"
            nodomainheader = r""
            if has_variances:
                columnheader = "%-40s %13s     %13s  %13s\n%-40s   %-6s %6s   %-6s %6s    %-6s %6s" % ("", "Time score", "Expansion score", "Coverage score", "Name", "mu", "sigma", "mu", "sigma", "mu", "sigma")
                line = r"%-40.40s   %5.3f %6s   %5.3f %6s    %5.3f %6s"
            else:
                columnheader = r"%-40s    %10s    %15s    %15s" % ("Name", "Time score", "Expansion score", "Coverage score")
                line = r"%-40.40s    %10.3f    %15.3f    %15.3f"
            footer = r""
        if format == 'textable':
            if has_variances:
                header = r"""\documentclass{article}
\usepackage{booktabs}

\begin{document}
\begin{tabular}{@{}p{0.3\textwidth}rrrrrr@{}} \toprule
    &  \multicolumn{2}{c}{%13s}
    &  \multicolumn{2}{c}{%13s}
    &  \multicolumn{2}{c}{%13s} \\
    \cmidrule(lr){2-3} \cmidrule(lr){4-5} \cmidrule(l){6-7}
    %s &
        %-6s  & %-6s  & %-6s  & %-6s  & %-6s  & %-6s  \\""" % ("Time score", "Expansion score", "Coverage score", "Name", "$\\mu$", "$\\sigma$", "$\\mu$", "$\\sigma$", "$\\mu$", "$\\sigma$")
                domainheader = r"    \midrule \multicolumn{7}{l}{%s domain (%d tasks)} \\ \midrule"
                line   = r"""    %s & 
        %5.3f  & %6s    & %5.3f  & %6s    & %5.3f  & %6s    \\"""
            else:
                header = r"""\documentclass{article}
\usepackage{booktabs}

\begin{document}
\begin{tabular}{@{}p{0.5\textwidth}rrr@{}} \toprule
    %s &
        %10s &  %15s &  %15s \\""" % ("Name", "Time score", "Expansion score", "Coverage score")
                domainheader = r"    \midrule \multicolumn{4}{l}{%s domain (%d tasks)} \\ \midrule"
                line   = r"""    %s &
        %10.3f &  %10.3f &  %15.3f \\"""


            nodomainheader = r"\midrule"
            columnheader = ""
            footer = "    \\bottomrule\n\\end{tabular}\n\\end{document}"
        if header:
            print header
        for domainname in sorted(averaged_time_scores.iterkeys()):
            if domainname != "all":
                print domainheader % (domainname, domain_size(domainname))
            elif nodomainheader:
                print nodomainheader
            if columnheader:
                print columnheader
            for name in sorted(experiments.keys()):
                if has_variances:
                    print line % (name, averaged_time_scores[domainname][name], std_dev_time_scores[domainname][name],
                                        averaged_expansion_scores[domainname][name], std_dev_expansion_scores[domainname][name],
                                        averaged_coverage_scores[domainname][name], std_dev_coverage_scores[domainname][name])
                else:
                    print line % (name, averaged_time_scores[domainname][name], 
                                        averaged_expansion_scores[domainname][name],
                                        averaged_coverage_scores[domainname][name])
        if footer:
            print footer

    elif format == 'texplottime' or format == 'texplotexpansions':
        if len(experiments.keys()) > 2:
            print "more than 2 experiments, plotting %s and %s" % (first_exp_name, second_exp_name)
        if format == 'texplottime':
            heading = "Time score"
            data = time_score_plot_averaged
        elif format == 'texplotexpansions':
            heading = "Expansion score"
            data = expansion_score_plot_averaged

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
            for (problemname, scores) in sorted(domain_scores.iteritems()):
                neighbors = binsize[int(scores[0])][int(scores[1])]
                if neighbors > 1:
                    print_scores = [max(0, min(100, int(scores[0]) + random() -0.5)), max(0, min(100, int(scores[1]) + random() -0.5))]
                else:
                    print_scores = [int(scores[0]), int(scores[1])]
                plotfile.write('#%s\n' % problemname + " ".join(map(str, print_scores + [neighbors])) + '\n')
        fnull = open(os.devnull, 'w')
        plotfile.close()
        tmpdir = tempfile.mkdtemp()
        tex_file = open(tmpdir + '/scatterplot.tex', 'w')
        tex_file.write(r"""\documentclass[a4paper]{scrreprt}

\usepackage{pgfplots}

\pgfplotsset{colormap={slowstart}{rgb(0cm)=(0,0,0); rgb(1cm)=(0,1,0); rgb(10cm)=(1,1,0); rgb(300cm)=(1,0,0)}}

\begin{document}
\begin{tikzpicture}
  \begin{axis}[title={%s},xlabel={%s},ylabel={%s},xmin=0,xmax=100,ymin=0,ymax=100,colorbar,width=\textwidth,point meta min=0,point meta max=835]
    \addplot+[scatter,scatter src=explicit, only marks,mark=x] file{plot.data};
    \addplot+[sharp plot, no marks, color=lightgray] coordinates {(0,0) (100,100)};
  \end{axis}
\end{tikzpicture}
\end{document}
""" % ('Time scores' if format == 'texplottime' else 'Expansion scores', first_exp_name, second_exp_name))
        tex_file.close()
        shutil.copy('plot.data', tmpdir + '/plot.data')
        owd = os.getcwd()
        os.chdir(tmpdir)
        print "Compiling scatter plot"
        subprocess.call(['pdflatex', 'scatterplot.tex'], stdout=fnull, stderr=fnull)
        plotname = 'time' if format == 'texplottime' else 'expansions'
        plotname += '_%s_%s_' % (first_exp_name.split()[0], second_exp_name.split()[0])
        if len(data) == 20:
            plotname += "_ALL"
        else:
            plotname += "_".join(data.iterkeys())
        plotname += '.png'
        os.chdir(owd)
        subprocess.call(['convert', '-density', '150', '%s/scatterplot.pdf' % tmpdir, '-crop', '900x800+200+150', plotname])
        subprocess.Popen(['eog', plotname], stdout=fnull, stderr=fnull)
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
                    assert problemresult.name != existing.name, domain_name + " " + problemresult.name
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

def print_initial_node_statistics(filenames):
    results = parse_results(filenames[0])
    outfile = open(filenames[1], 'w')
    outfile.write(r"""\documentclass[11pt,a4paper]{scrartcl}
\usepackage{tikz}
\usepackage{pgfplots}

\pgfdeclareplotmark{v}{%
  \pgfpathmoveto{\pgfpoint{-\pgfplotmarksize}{\pgfplotmarksize}}
  \pgfpathlineto{\pgfpoint{0pt}{0pt}}
  \pgfpathlineto{\pgfpoint{\pgfplotmarksize}{\pgfplotmarksize}}
  \pgfusepathqstroke
}

\pgfdeclareplotmark{^}{%
  \pgfpathmoveto{\pgfpoint{-\pgfplotmarksize}{-\pgfplotmarksize}}
  \pgfpathlineto{\pgfpoint{0pt}{0pt}}
  \pgfpathlineto{\pgfpoint{\pgfplotmarksize}{-\pgfplotmarksize}}
  \pgfusepathqstroke
}


\begin{document}
""")
    # outfile.write("domain, problem, lmcut, initial_plan, optimized_initial_plan, hplus, hplus_lower_bound, hplus_upper_bound\n")
    for domainresults in results:
        domainname = domainresults.name
        i = 0
        lb_markers = []
        ub_markers = []
        lbh_markers = []
        ubh_markers = []
        perfect_markers = []
        lines = []
        nNoSearch = 0
        nPerfect = 0
        nLMcutPerfect = 0
        sortable_problem_results = [(map(int, re.findall(r"\d+", p.name)), p) for p in domainresults.problemresults]
        for _,p in sorted(sortable_problem_results):
            problemname = p.name
            i += 1
            lmcut = p.get("h_lmcut")
            if p.get("initial_plan_cost") is None:
                initial_plan_cost = float("inf")
            else:
                initial_plan_cost = float(p.get("initial_plan_cost"))
            if p.get("optimized_initial_plan_cost") is None:
                optimized_initial_plan_cost = initial_plan_cost
            else:
                optimized_initial_plan_cost = float(p.get("optimized_initial_plan_cost"))
            if lmcut == float("inf"):
                initial_plan_cost = float("inf")
                optimized_initial_plan_cost = float("inf")
            hplus, lower_bound, upper_bound = ("UNKNOWN", 0, float("inf"))
            if KNOWN_HPLUS[domainname].has_key(problemname):
                hplus = KNOWN_HPLUS[domainname][problemname]
                lower_bound, upper_bound = (hplus, hplus)
            else:
                lower_bound, upper_bound = UNKNOWN_HPLUS[domainname][problemname]
            if lmcut == optimized_initial_plan_cost:
                nNoSearch += 1
#            else:
#                outfile.write("%s,%s,%s,%s,%s,%s,%s,%s\n" % (domainname,problemname,lmcut,initial_plan_cost,optimized_initial_plan_cost,hplus,lower_bound,upper_bound))
            if hplus == optimized_initial_plan_cost:
                nPerfect += 1
            if lmcut == hplus:
                nLMcutPerfect += 1

            if hplus == float("inf"):
                continue
            if lmcut == optimized_initial_plan_cost:
                perfect_markers.append("(%s,%s)" % (i, int(hplus)))
            else:
                lines.append("\\addplot[mark=none] coordinates { (%s,%s) (%s,%s) };" % (i, int(lmcut), i, int(initial_plan_cost)))
                lb_markers.append("(%s,%s)" % (i, int(lmcut)))
                ub_markers.append("(%s,%s)" % (i, int(initial_plan_cost)))
                ub_markers.append("(%s,%s)" % (i, int(optimized_initial_plan_cost)))
                if hplus == "UNKNOWN":
                    lbh_markers.append("(%s,%s)" % (i, int(lower_bound)))
                    ubh_markers.append("(%s,%s)" % (i, int(upper_bound)))
                else:
                    perfect_markers.append("(%s,%s)" % (i, int(hplus)))

        outfile.write(r"""
  Domain: %s\\
  \begin{tabular}{lllll}
    Problems & Known $h^+$ & perfect ub & perfect lb & both perfect \\ \hline
    %s       & %s          & %s         & %s         & %s
  \end{tabular}

  \noindent
  \begin{tikzpicture}
    \begin{axis}[width=\textwidth]
      \addplot+[only marks, color=blue,  mark=-] coordinates { %s };
      \addplot+[only marks, color=red,   mark=-] coordinates { %s };
      \addplot+[only marks, color=black, mark=^] coordinates { %s };
      \addplot+[only marks, color=black, mark=v] coordinates { %s };
      \addplot+[only marks, color=black, mark=x] coordinates { %s };
      %s
    \end{axis}
  \end{tikzpicture}
  \newpage
""" % (domainname,
       i,
       len(KNOWN_HPLUS[domainname]),
       nPerfect,
       nLMcutPerfect,
       nNoSearch,
       " ".join(lb_markers),
       " ".join(ub_markers),
       " ".join(lbh_markers),
       " ".join(ubh_markers),
       " ".join(perfect_markers),
       "\n      ".join(lines)))
    outfile.write("\\end{document}\n")
    outfile.close()

def print_ida_layer_evaluation(filenames):
    
    # domain -> problem -> (all_expansions_list, last_layer_percentage_list, second_to_last_layer_percentage_list, other_layers_percentage_list)
    expansions = defaultdict(lambda : defaultdict(lambda : ([], [], [], [])))

    for filename in filenames[:-1]:
        for domainresults in parse_results(filename):
            domainname = domainresults.name
            for p in domainresults.problemresults:
                problemname = p.name
                if p.get("error") is not None or p.get("h_plus") == float("inf"):
                    continue
                all_expansions = float(p.get("bnb_expansions"))
                last_layer_expansions = float(p.get("bnb_expansions_last_layer"))
                second_to_last_layer_expansions = float(p.get("bnb_expansions_second_to_last_layer"))
                other_expansions = all_expansions - (last_layer_expansions + second_to_last_layer_expansions)
                if all_expansions is None:
                    print domainname, problemname
                if all_expansions <= 100 or second_to_last_layer_expansions == 0:
                    continue
                expansions[domainname][problemname][0].append(all_expansions)
                expansions[domainname][problemname][1].append(last_layer_expansions / all_expansions)
                expansions[domainname][problemname][2].append(second_to_last_layer_expansions / all_expansions)
                expansions[domainname][problemname][3].append(other_expansions / all_expansions)

    outfile = open(filenames[-1], 'w')
    outfile.write(r"""\documentclass[11pt,a4paper]{scrartcl}
\usepackage{tikz}
\usetikzlibrary{calc}
\usepackage{pgfplots}

\begin{document}
  \begin{tikzpicture}
  \matrix{
""")
    all_last_layer_percentages = []
    all_second_to_last_layer_percentages = []
    all_other_layers_percentages = []
    for i,(d, domainexpansions) in enumerate(sorted(expansions.items())):
        last_layer_percentages = []
        second_to_last_layer_percentages = []
        other_layers_percentages = []
        all_layers_scores = []
        for p, (all_expansions_list, last_layer_percentage_list, second_to_last_layer_percentage_list, other_layers_percentage_list) in sorted(domainexpansions.items()):
            all_expansions = sum(all_expansions_list) / float(len(all_expansions_list))
            last_layer_percentage = sum(last_layer_percentage_list) / float(len(last_layer_percentage_list))
            second_to_last_layer_percentage = sum(second_to_last_layer_percentage_list) / float(len(second_to_last_layer_percentage_list))
            other_layers_percentage = sum(other_layers_percentage_list) / float(len(other_layers_percentage_list))

            last_layer_percentages.append(last_layer_percentage)
            all_last_layer_percentages.append(last_layer_percentage)
            second_to_last_layer_percentages.append(second_to_last_layer_percentage)
            all_second_to_last_layer_percentages.append(second_to_last_layer_percentage)
            other_layers_percentages.append(other_layers_percentage)
            all_other_layers_percentages.append(other_layers_percentage)
            all_layers_scores.append(100 - loginterpolate(float(all_expansions), 100, 1000000, 0, 100))

        if i == 0:
            plotheight = (len(all_layers_scores)+2)*3 + 50
            xticks = "xticklabels={,1,0.9,0.8,0.7,0.6,0.5,0.4,0.3,0.2,0.1,0}, xticklabel pos=right"
        elif i == len(expansions.items()) -1:
            plotheight = (len(all_layers_scores)+2)*3 + 50
            xticks = "xticklabels={,1,0.9,0.8,0.7,0.6,0.5,0.4,0.3,0.2,0.1,0}, "
        else:
            plotheight = (len(all_layers_scores)+2)*3 + 50
            xticks = "xticklabels=\empty, x tick label style={above}"
        outfile.write(r"""
  \node[anchor=north west] {%s}; &
    \begin{axis}[anchor=north west,width=0.8\textwidth,height=%spt,xbar stacked,bar width=2, xmin=0,xmax=100, ymin=0,ymax=%s, ytick=\empty,%s]
      \addplot[color=black, fill=black] coordinates { %s };
      \addplot[color=green, fill=green] coordinates { %s };
      \addplot[color=blue, fill=blue] coordinates { %s };
    \end{axis} \\
""" % (d,
       plotheight,
       len(all_layers_scores)+1,
       xticks,
       " ".join(["(%s,%s)" % (int(o * a), i+1) for i,(o,a) in enumerate(zip(other_layers_percentages,all_layers_scores))]),
       " ".join(["(%s,%s)" % (int(s * a), i+1) for i,(s,a) in enumerate(zip(second_to_last_layer_percentages,all_layers_scores))]),
       " ".join(["(%s,%s)" % (int(l * a), i+1) for i,(l,a) in enumerate(zip(last_layer_percentages,all_layers_scores))]),
      ))
#  \begin{tabular}{llll}
#    Average \%% & last layer & second to last layer & other layers  \\ \hline
#                & %s         & %s                   & %s
#  \end{tabular}
#
#  \noindent
#       100 * sum(last_layer_percentages) / float(len(last_layer_percentages)),
#       100 * sum(second_to_last_layer_percentages) / float(len(second_to_last_layer_percentages)),
#       100 * sum(other_layers_percentages) / float(len(other_layers_percentages)),


    outfile.write(r"""  };
  \end{tikzpicture}
\end{document}
""")
    outfile.close()
    print "Included %d bars" % (sum([len(tasks) for tasks in expansions.values()]))
    print "Average percentage of expansions in last layer", (sum(all_last_layer_percentages) / float(len(all_last_layer_percentages)))
    print "Average percentage of expansions in second to last layer", (sum(all_second_to_last_layer_percentages) / float(len(all_second_to_last_layer_percentages)))
    print "Average percentage of expansions in other layers", (sum(all_other_layers_percentages) / float(len(all_other_layers_percentages)))

def sort_expansion_limit_files(filenames):
    for directory in ("limit", "no-search", "done", "error"):
        if not os.path.exists(directory):
            os.mkdir(directory)
    times_per_expansions = defaultdict(list)
    for filename in filenames:        
        results = parse_results(filename)
        p = results[0].problemresults[0]
        time_spent = p.get("h_plus_time")
        if time_spent is None:
            time_spent = float(p.get("h_plus_guess_time"))
        if float(p.get("bnb_expansions",0)) > 1:
            times_per_expansions[results[0].name].append(time_spent / float(p.get("bnb_expansions")))
        if p.get("error") == "Exceeded expansion limit of 10000":
            shutil.move(filename, "limit")
        elif p.get("error") is None:
            if p.get("bnb_expansions") == 0:
                shutil.move(filename, "no-search")
            else:
                shutil.move(filename, "done")
        else:
            shutil.move(filename, "error")
    for d in sorted(times_per_expansions.keys()):
        print d, "%.3f" % (sum(times_per_expansions[d]) / float(len(times_per_expansions[d]))), "%.3f" % max(times_per_expansions[d])


def generate_expansion_histogram(filenames):
    domain_name, problem_name = ("", "")
    expansion_list = []
    time_list = []
    for filename in filenames[:-1]:        
        results = parse_results(filename)
        p = results[0].problemresults[0]
        domain_name, problem_name = (results[0].name, p.name)
        expansions = p.get("bnb_expansions")
        time = p.get("h_plus_time")
        if expansions is None or time is None:
            print filename
            continue
        expansion_list.append(expansions)
        time_list.append(time)
    min_exp = min(expansion_list)
    max_exp = max(expansion_list)
    min_time = min(time_list)
    max_time = max(time_list)
    nBuckets = 100
    bucketSize_exp = (max_exp - min_exp) / float(nBuckets)
    if bucketSize_exp == 0:
        bucketSize_exp = 1
    bucketSize_time = (max_time - min_time) / float(nBuckets)
    if bucketSize_time == 0:
        bucketSize_time = 1
    counts_exp = [0 for _ in xrange(nBuckets)]
    counts_time = [0 for _ in xrange(nBuckets)]
    for e in expansion_list:
        counts_exp[min(nBuckets-1, int((e - min_exp) / bucketSize_exp))] += 1
    for e in time_list:
        counts_time[min(nBuckets-1, int((e - min_time) / bucketSize_time))] += 1
    data_exp =  [(i*bucketSize_exp  + min_exp,c)  for (i,c) in enumerate(counts_exp)]
    data_time = [(i*bucketSize_time + min_time,c) for (i,c) in enumerate(counts_time)]
    outfile = open(filenames[-1], 'w')
    outfile.write(r"""\documentclass[11pt,a4paper]{scrartcl}
\usepackage{tikz}
\usepackage{pgfplots}

\begin{document}
  \begin{tikzpicture}
    \begin{axis}[height=0.48\textheight,ybar,bar width=2pt,xlabel=expansions,title=%s]
      \addplot coordinates { %s };
      \addplot[color=red] coordinates { %s };
    \end{axis}
  \end{tikzpicture}

  \begin{tikzpicture}
    \begin{axis}[height=0.48\textheight,ybar,bar width=2pt,xlabel=time,title=%s]
      \addplot coordinates { %s };
      \addplot[color=red] coordinates { %s };
    \end{axis}
  \end{tikzpicture}
\end{document}
""" % ("%s - %s" % (domain_name, problem_name),
       " ".join(["(%f, %d)" % d for d in data_exp]),
       "(%f, %d)" % (len(counts_exp)*bucketSize_exp + min_exp, 500-sum(counts_exp)),
       "%s - %s" % (domain_name, problem_name),
       " ".join(["(%f, %d)" % d for d in data_time]),
       "(%f, %d)" % (len(counts_time)*bucketSize_time + min_time, 500-sum(counts_time))))

def lost_gained_problems(filenames):
    results0, results1 = parse_results(filenames[0]), parse_results(filenames[1])
    gained, lost, unsolved_known = defaultdict(list), defaultdict(list), defaultdict(list)
    for domainresults in zipresults(results0, results1):
        for p in zipresults(domainresults[0].problemresults, domainresults[1].problemresults):
            if (p[0].get("h_plus") is None) and (p[1].get("h_plus") is not None):
                gained[domainresults[0].name].append(p[0].name)
            elif (p[0].get("h_plus") is not None) and (p[1].get("h_plus") is None):
                lost[domainresults[1].name].append(p[1].name)
            if (p[1].get("h_plus") is None) and KNOWN_HPLUS[domainresults[1].name].has_key(p[1].name):
                unsolved_known[domainresults[1].name].append(p[1].name)
    print "Gained (solved in %s but not in %s):" % (filenames[1], filenames[0])
    for d in sorted(gained.keys()):
        for p in sorted(gained[d]):
            print "  %s %s" % (d, p)
    print "Lost (solved in %s but not in %s):" % (filenames[0], filenames[1])
    for d in sorted(lost.keys()):
        for p in sorted(lost[d]):
            print "  %s %s" % (d, p)
#    print "Unsolved but known h^+ value:"
#    for d in sorted(unsolved_known.keys()):
#        for p in sorted(unsolved_known[d]):
#            print "  %s %s" % (d, p)
        
def list_nontrivial_problems(filenames):
    trivial = defaultdict(list)
    easy = defaultdict(list)
    medium = defaultdict(list)
    hard = defaultdict(list)
    unsolved = defaultdict(list)

    results0, results1 = parse_results(filenames[0]), parse_results(filenames[1])
    coverage_score = 0
    for domainresults in zipresults(results0, results1):
        domain_coverage = 0
        for p in zipresults(domainresults[0].problemresults, domainresults[1].problemresults):
            difficulty = ["", ""]
            for i in (0,1):
                expansions = p[i].get("bnb_expansions")
                time = p[i].get("h_plus_time")
                if time is None:
                    difficulty[i] = "unsolved"
                elif expansions is not None and expansions == 0:
                    difficulty[i] = "trivial"
                elif time < 1:
                    difficulty[i] = "easy"
                else:
                    difficulty[i] = "hard"
            if difficulty != ["unsolved", "unsolved"]:
                domain_coverage += 1
            if difficulty == ["trivial", "trivial"]:
                trivial[domainresults[0].name].append(p[0].name)
            elif difficulty[0] in ("trivial", "easy") and difficulty[1] in ("trivial", "easy"):
                easy[domainresults[0].name].append(p[0].name)
            elif ((difficulty[0] == "hard" and difficulty[1] in ("trivial", "easy")) or 
                  (difficulty[0] in ("trivial", "easy") and difficulty[1] == "hard") ):
                medium[domainresults[0].name].append(p[0].name)
            elif ((difficulty[0] == "unsolved" and difficulty[1] != "unsolved") or
                  (difficulty[0] != "unsolved" and difficulty[1] == "unsolved") or
                  difficulty == ["hard", "hard"] ):
                hard[domainresults[0].name].append(p[0].name)
            elif difficulty == ["unsolved", "unsolved"]:
                unsolved[domainresults[0].name].append(p[0].name)
            else:
                print domainresults[0].name, p[0].name, difficulty
        coverage_score += domain_coverage / float(len(domainresults[0].problemresults))
    coverage_score = coverage_score / float(len(results0))

    trivial_numbers = defaultdict(list)
    easy_numbers = defaultdict(list)
    medium_numbers = defaultdict(list)
    hard_numbers = defaultdict(list)
    unsolved_numbers = defaultdict(list)

    from problem_suites import problem_subset
    for (domainname, paths) in problem_subset():
        for i, (p, d) in enumerate(paths):
            problemname = os.path.splitext(os.path.basename(p))[0]
            if problemname in trivial[domainname]:
                trivial_numbers[domainname].append(i)
            if problemname in easy[domainname]:
                easy_numbers[domainname].append(i)
            if problemname in medium[domainname]:
                medium_numbers[domainname].append(i)
            if problemname in hard[domainname]:
                hard_numbers[domainname].append(i)
            if problemname in unsolved[domainname]:
                unsolved_numbers[domainname].append(i)
    print "trivial", sum([len(e) for e in trivial_numbers.values()]), trivial_numbers
    print
    print "easy", sum([len(e) for e in easy_numbers.values()]), easy_numbers
    print
    print "medium", sum([len(e) for e in medium_numbers.values()]), medium_numbers
    print
    print "hard", sum([len(e) for e in hard_numbers.values()]), hard_numbers
    print
    print "unsolved", sum([len(e) for e in unsolved_numbers.values()]), 835 - sum([len(e) for e in KNOWN_HPLUS.values()]), unsolved_numbers
    print
    print "Best case coverage without unsolved", coverage_score

def evaluate_bound_quality(filenames, timeout):
    nNoSearch = 0
    nPerfect = 0
    nAlmostPerfect = 0
    nLMcutPerfect = 0
    nLMcutAlmostPerfect = 0
    initial_upper_bound = defaultdict(dict)
    for domainresult in parse_results(filenames[0]):
        for p in domainresult.problemresults:
            initial_plan_cost = float(p.get("initial_plan_cost", "inf"))
            optimized_initial_plan_cost = float(p.get("optimized_initial_plan_cost", initial_plan_cost))
            lmcut = p.get("lmcut", 0)
            if p.get("h_plus") == float("inf"):
                initial_plan_cost = float("inf")
                optimized_initial_plan_cost = float("inf")
            initial_upper_bound[domainresult.name][p.name] = optimized_initial_plan_cost
    for domainresult in parse_results(filenames[1]):
        for p in domainresult.problemresults:
            optimized_initial_plan_cost = initial_upper_bound[domainresult.name][p.name]
            lmcut = p.get("h_lmcut", 0)
            assert lmcut > 0, (domainresult.name, p.name)
            if p.get("h_plus") == float("inf"):
                lmcut = float("inf")
            hplus = KNOWN_HPLUS[domainresult.name].get(p.name, "UNKOWN")
            if lmcut == optimized_initial_plan_cost:
                nNoSearch += 1
            if hplus == optimized_initial_plan_cost:
                nPerfect += 1
            if hplus == optimized_initial_plan_cost -1:
                nAlmostPerfect += 1
            if lmcut == hplus:
                nLMcutPerfect += 1
            if lmcut+1 == hplus:
                nLMcutAlmostPerfect += 1
    print "both perfect", nNoSearch
    print "upper bound perfect", nPerfect
    print "upper bound almost perfect", nAlmostPerfect
    print "lower bound perfect", nLMcutPerfect
    print "lower bound almost perfect", nLMcutAlmostPerfect
    print "unknown h^+", sum([len(bounds) for (_, bounds) in UNKNOWN_HPLUS.items()])


def get_not_always_solved_or_unsolved(filenames, timeout):
    always_solved = set()
    never_solved = set()
    sometimes_solved = set()
    for filename in filenames:
        results = parse_results(filename)
        for domainresults in results:
            domainname = domainresults.name
            for p in domainresults.problemresults:
                problemname = p.name
                if p.get("h_plus") and p.get("h_plus_time") + p.get("relevance_analysis_time") < timeout:
                    if (domainname, problemname) in never_solved:
                        never_solved.remove((domainname, problemname))
                        sometimes_solved.add((domainname, problemname))
                    else:
                        always_solved.add((domainname, problemname))
                else:
                    if (domainname, problemname) in always_solved:
                        always_solved.remove((domainname, problemname))
                        sometimes_solved.add((domainname, problemname))
                    else:
                        never_solved.add((domainname, problemname))
    for (d,p) in sorted(sometimes_solved):
        print d,p

def get_solve_times(filenames):
    solve_times = defaultdict(lambda : defaultdict(list))
    for filename in filenames:
        for domainresults in parse_results(filename):
            domainname = domainresults.name
            for p in domainresults.problemresults:
                problemname = p.name
                solve_times[domainname][problemname].append(p.get("h_plus_time"))
    return solve_times

def get_solve_chances(solve_times, timeout=1800):
    # domain -> problem -> number of solves
    solve_chances = defaultdict(lambda : defaultdict(float))
    for domainname in solve_times.keys():
        for problemname, problemsolvetimes in solve_times[domainname].items():
            solves = 0
            for problemsolvetime in problemsolvetimes:
                if problemsolvetime  is not None and problemsolvetime < timeout:
                    solves += 1
            solve_chances[domainname][problemname] = solves / float(len(problemsolvetimes))
    return solve_chances

def print_percentiles(solve_chances):
    print_coverage_guess(solve_chances)
#    for percentile in (25,50,75,100):
#        cutoff = (100 - percentile) / float(100)
#        coverage = 0
#        for domain, domainsolves in solve_chances.iteritems():
#            domaincoverage = 0
#            for problem, problemsolves in domainsolves.iteritems():
#                if problemsolves > cutoff:
#                    domaincoverage += 1
#            coverage += domaincoverage / float(domain_size(domain))
#        print "%f," % (coverage / float(20)),
#    print

def print_coverage_guess(solve_chances):
    coverage = 0
    for domain, domainsolves in solve_chances.iteritems():
        domaincoverage = 0
        for problem, problemsolves in domainsolves.iteritems():
            domaincoverage += problemsolves
        coverage += domaincoverage / float(domain_size(domain))
    print "%f," % (coverage / float(20))

def print_restart_calculation(solve_times, timeout=1800):
    # constant increase
    for const_restart_time in xrange(10, timeout+1, 10):
        runs = timeout / const_restart_time
        last_run = timeout % const_restart_time
        solves_run = get_solve_chances(solve_times, timeout=const_restart_time)
        solves_last_run = get_solve_chances(solve_times, timeout=last_run)
        solve_chances = defaultdict(dict)
        for domain, domainsolves in solves_run.iteritems():
            for problem, chance_to_solve_in_run in domainsolves.iteritems():
                chance_to_solve_in_last_run = solves_last_run[domain][problem]
                # all available runs
                solve_chances[domain][problem] = 1-( ((1 - chance_to_solve_in_run) ** runs) * (1- chance_to_solve_in_last_run) )
                # one run only
                # solve_chances[domain][problem] = chance_to_solve_in_run        
        print "%d," % const_restart_time,
        print_percentiles(solve_chances)
    # geometric increase 
    inv_solve_chances = defaultdict(lambda: defaultdict(lambda: 1))
    exponent = 1
    runs = []
    while (2 ** exponent + sum(runs) < timeout):
        runs.append(2 ** exponent)
        exponent += 1
    runs.append(timeout-sum(runs))
    for restart_time in runs:
        solves_run = get_solve_chances(solve_times, timeout=restart_time)
        for domain, domainsolves in solves_run.iteritems():
            for problem, chance_to_solve_in_run in domainsolves.iteritems():
                inv_solve_chances[domain][problem] *= (1 - chance_to_solve_in_run)
    print "geometric increase (%s)" % runs
    solve_chances = defaultdict(lambda: defaultdict(float))
    for domain, inv_domainsolves in inv_solve_chances.iteritems():
        for problem, inv_chance_to_solve in inv_domainsolves.iteritems():
            solve_chances[domain][problem] = 1 - inv_chance_to_solve
    print_percentiles(solve_chances)
    print
    # 1*80, 1*220
    inv_solve_chances = defaultdict(lambda: defaultdict(lambda: 1))
    runs = [(1,80), (1,220)]
    for repeats, restart_time in runs:
        solves_run = get_solve_chances(solve_times, timeout=restart_time)
        for domain, domainsolves in solves_run.iteritems():
            for problem, chance_to_solve_in_run in domainsolves.iteritems():
                inv_solve_chances[domain][problem] *= (1 - chance_to_solve_in_run) ** repeats
    print "manually adjusted increase (%s)" % runs
    solve_chances = defaultdict(lambda: defaultdict(float))
    for domain, inv_domainsolves in inv_solve_chances.iteritems():
        for problem, inv_chance_to_solve in inv_domainsolves.iteritems():
            solve_chances[domain][problem] = 1 - inv_chance_to_solve
    print_percentiles(solve_chances)
    # 10*1, 5*10, 1*220
    inv_solve_chances = defaultdict(lambda: defaultdict(lambda: 1))
    runs = [(10,1), (5,10), (1,220)]
    for repeats, restart_time in runs:
        solves_run = get_solve_chances(solve_times, timeout=restart_time)
        for domain, domainsolves in solves_run.iteritems():
            for problem, chance_to_solve_in_run in domainsolves.iteritems():
                inv_solve_chances[domain][problem] *= (1 - chance_to_solve_in_run) ** repeats
    print "manually adjusted increase (%s)" % runs
    solve_chances = defaultdict(lambda: defaultdict(float))
    for domain, inv_domainsolves in inv_solve_chances.iteritems():
        for problem, inv_chance_to_solve in inv_domainsolves.iteritems():
            solve_chances[domain][problem] = 1 - inv_chance_to_solve
    print_percentiles(solve_chances)


def print_restart_analysis(filenames, timeout):
    solve_times = get_solve_times(filenames)
    solve_chances = get_solve_chances(solve_times, timeout)
    print "Problems that are solved only in some of the runs"
    for domain, domainsolves in sorted(solve_chances.iteritems()):
        for problem, solve_chance in domainsolves.iteritems():
            if solve_chance > 0 and solve_chance < 1:
                print domain, problem, solve_chance
                print "    ", sorted([int(t) for t in solve_times[domain][problem] if t is not None])
    print
    print_restart_calculation(solve_times, int(timeout))

def filter_test(filenames):
    max_filters = (0, '', '', [], [], [], [])
    times = defaultdict(list)
    iterations = []
    useless_first_achiever_in_len_2 = 0
    useless_first_achiever_in_len_3 = 0
    for filename in filenames:
        for domainresult in parse_results(filename):
            for p in domainresult.problemresults:
                times["parse"].append((p.get("parse_time"), domainresult.name, p.name))
                times["relax"].append((p.get("relaxation_time"), domainresult.name, p.name))
                times["filter"].append((p.get("relevance_analysis_time"), domainresult.name, p.name))
                times["parse + relax"].append((p.get("parse_time") + p.get("relaxation_time"), domainresult.name, p.name))
                times["preprocess"].append((p.get("relevance_analysis_time") + p.get("parse_time") + p.get("relaxation_time"), domainresult.name, p.name))


                assert (p.get("filter_1_name") == "relevance"), str(p.get("filter_1_name"))
                times["once relevance"].append((float(p.get("filter_1_time")), domainresult.name, p.name))
                if p.get("filter_2_name") is not None:
                    assert (p.get("filter_2_name") == "first achiever"), str(p.get("filter_2_name"))
                    times["once first achiever"].append((float(p.get("filter_2_time")), domainresult.name, p.name))


                i = 0
                it = 0
                relevance_time = 0
                first_achiever_time = 0
                removed_operators_relev = []
                removed_variables_relev = []
                removed_operators_first = []
                removed_variables_first = []
                while True:
                    i += 1
                    time = p.get("filter_%d_time" % i)
                    if time is None:
                        break
                    if p.get("filter_%d_name" % i) == "relevance":
                        relevance_time += float(time)
                        removed_operators_relev.append(int(p.get("filter_%d_filtered_operators" % i)))
                        removed_variables_relev.append(int(p.get("filter_%d_filtered_variables" % i)))
                    elif p.get("filter_%d_name" % i) == "first achiever":
                        it += 1
                        first_achiever_time += float(time)
                        removed_operators_first.append(int(p.get("filter_%d_filtered_operators" % i)))
                        removed_variables_first.append(int(p.get("filter_%d_filtered_variables" % i)))
                        if i == 4 and p.get("filter_%d_name" % (i+1)) is None:
                            useless_first_achiever_in_len_2 += 1
                        if i == 6 and p.get("filter_%d_name" % (i+1)) is None:
                            useless_first_achiever_in_len_3 += 1
                    else:
                        print "SHOULD NOT HAPPEN"
                    if i > max_filters[0]:
                        max_filters = (i, domainresult.name, p.name, removed_operators_relev, removed_variables_relev, removed_operators_first, removed_variables_first)
                iterations.append((it, domainresult.name, p.name))
                times["relevance"].append((relevance_time, domainresult.name, p.name))
                times["first achiever"].append((first_achiever_time, domainresult.name, p.name))
    for key, value in times.iteritems():
        print key
        for t, d, p in sorted(value)[-10:]:
            print "   ", t, d, p
#    print
#    print max_filters

#    worst = [e for e in times["preprocess"] if e[0] > 10]
#    print "worst preprocess (%d over 10 seconds, %d over 60 seconds)" % (len(worst), len([e for e in worst if e[0] > 60]))
#    for t, d, p in sorted(worst):
#        print "   ", t, d, p
#    print

    print "%d tasks with 0 iterations" % sum([1 for e in iterations if e[0] == 0])
    print "%d tasks with 1 iterations" % sum([1 for e in iterations if e[0] == 1])
    print "%d tasks with 2 iterations (%d of that not necessary)" % (sum([1 for e in iterations if e[0] == 2]), useless_first_achiever_in_len_2)
    print "%d tasks with 3 iterations (%d of that not necessary)" % (sum([1 for e in iterations if e[0] == 3]), useless_first_achiever_in_len_3)
    print "%d tasks with >3 iterations:" % sum([1 for e in iterations if e[0] > 3])
    for i, d, p in sorted(iterations):
        if i > 3:
            print "    ", i, d, p


def print_over_timeout(filenames, timeout):
    for filename in filenames:
        cut = 0
        for domainresult in parse_results(filename):
            for p in domainresult.problemresults:
                if p.get("h_plus") is not None and p.get("h_plus_time") + p.get("relevance_analysis_time") > timeout:
                    cut += 1
        print cut, filename



def do_custom_stuff(filenames, timeout):
    """
    temporary stuff, for test that are only useful once or twice
    """
    # print_initial_node_statistics(filenames)
    # sort_expansion_limit_files(filenames)
    print_ida_layer_evaluation(filenames)
    # generate_expansion_histogram(filenames)
    # get_not_always_solved_or_unsolved(filenames, timeout)
    # list_nontrivial_problems(filenames)
    # lost_gained_problems(filenames)
    # print_restart_analysis(filenames, timeout)
    # filter_test(filenames)
    # print_over_timeout(filenames, timeout)
    # evaluate_bound_quality(filenames, timeout)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Evaluate result files')
    group = parser.add_mutually_exclusive_group()
    group.add_argument('-x', '--custom', nargs="*")
    group.add_argument('-m', '--merge', nargs="+")
    group.add_argument('-c', '--compare', nargs="+")
    group.add_argument('-p', '--printstatstics')
    group.add_argument('-pm', '--printmissing')
    group.add_argument('-a', '--averageruns', nargs="*")
    parser.add_argument('-to', '--timeout', type=int, default=1800)
    parser.add_argument('-n', '--names', nargs="+")
    parser.add_argument('-t', '--times', nargs="+")
    parser.add_argument('-d', '--domains', nargs="*")
    parser.add_argument('-v', '--verbose', action='store_true')
    parser.add_argument('-f', '--format', choices=['console', 'textable', 'texplottime', 'texplotexpansions'], default='console')

    args = parser.parse_args()
    if args.merge:
        mergeresultfiles(args.merge[-1], *args.merge[:-1])
    elif args.compare:
        compare_results(args.compare, args.names, args.domains, args.times, args.format, args.verbose, timeout=float(args.timeout))
    elif args.printstatstics:
        print_averaged_statistics(args.printstatstics, domains=args.domains)
    elif args.averageruns:
        average_runs(args.averageruns, args.times, float(args.timeout))
    elif args.custom:
        do_custom_stuff(args.custom, float(args.timeout))
    else:
        printmissingresults(args.printmissing)

