#!/usr/bin/python2.7
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


def loginterpolate(x, min_x, max_x, min_score, max_score):
    if x <= min_x:
        return max_score
    if x >= max_x:
        return min_score
    
    return (max_score - min_score) * (
                              (log(x)     - log(max_x)) / 
                              (log(min_x) - log(max_x)) 
                             ) + min_score
    
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
                        warnings.add("!!! Invalid h+ value for %s - %s: DB said %s but %s said %s" % (
                                     domainname, p.name, str(KNOWN_HPLUS[domainname][p.name]), name, str(h)))
                else: # h+ not known yet
                    if UNKNOWN_HPLUS[domainname].has_key(p.name):
                        (best_lower_bound, best_upper_bound) = UNKNOWN_HPLUS[domainname][p.name]
                        if h < best_lower_bound or h > best_upper_bound:
                            warnings.add("!!! Invalid h+ value for %s - %s: DB said (%s, %s) but %s said %s" % (
                                         domainname, p.name, str(best_lower_bound), str(best_upper_bound), name, str(h)))
                    if new_hplus_values[domainname].has_key(p.name) and new_hplus_values[domainname][p.name][0] != h:
                        old_h, old_name = new_hplus_values[domainname][p.name]
                        warnings.add("!!! Invalid h+ value for %s - %s: %s said %s but %s said %s" % (
                                     domainname, p.name, old_name, str(old_h), name, str(h)))
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
                problem_time_score = loginterpolate(time_sum, 1, 1800, 0, 100)
                problem_expansion_score = loginterpolate(expansions, 100, 1000000, 0, 100)
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
                    print_scores = [max(0, min(100, int(scores[0]) + random() -0.5)), max(0, min(100, int(scores[1]) + random() -0.5))]
                else:
                    print_scores = [int(scores[0]), int(scores[1])]
                plotfile.write(" ".join(map(str, print_scores + [neighbors])) + '\n')
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
""" % ('Time scores' if format == 'texplottime' else 'Expansion scores', names[0], names[1]))
        tex_file.close()
        shutil.copy('plot.data', tmpdir + '/plot.data')
        owd = os.getcwd()
        os.chdir(tmpdir)
        print "Compiling scatter plot"
        subprocess.call(['pdflatex', 'scatterplot.tex'], stdout=fnull, stderr=fnull)
        plotname = 'time' if format == 'texplottime' else 'expansions'
        plotname += '_%s_%s_' % (names[0].split()[0], names[1].split()[0])
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
        for p in domainresults.problemresults:
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
    results = parse_results(filenames[0])
    outfile = open(filenames[1], 'w')
    outfile.write(r"""\documentclass[11pt,a4paper]{scrartcl}
\usepackage{tikz}
\usepackage{pgfplots}

\begin{document}
""")
    # outfile.write("domain, problem, lmcut, initial_plan, optimized_initial_plan, hplus, hplus_lower_bound, hplus_upper_bound\n")
    for domainresults in results:
        domainname = domainresults.name
        last_layer_percentages = []
        second_to_last_layer_percentages = []
        other_layers_percentages = []
        all_layers_scores = []
        errors = []
        for p in domainresults.problemresults:
            problemname = p.name
            if p.get("error") is not None or p.get("h_plus") == float("inf"):
                last_layer_percentages.append(0)
                second_to_last_layer_percentages.append(0)
                other_layers_percentages.append(0)
                all_layers_scores.append(1)
                errors.append(1)
                continue
            all_expansions = p.get("bnb_expansions")
            if all_expansions is None:
                print domainname, problemname
            last_layer_percentages.append(float(p.get("bnb_expansions_last_layer")) / float(all_expansions))
            second_to_last_layer_percentages.append(float(p.get("bnb_expansions_second_to_last_layer")) / float(all_expansions))
            other_layers_percentages.append((float(all_expansions) - (float(p.get("bnb_expansions_last_layer")) + float(p.get("bnb_expansions_second_to_last_layer")))) / float(all_expansions))
            all_layers_scores.append(100 - loginterpolate(float(all_expansions), 100, 1000000, 0, 100))
            errors.append(0)

        outfile.write(r"""
  Domain: %s\\
  \begin{tabular}{llll}
    Average \%% & last layer & second to last layer & other layers  \\ \hline
                & %s         & %s                   & %s
  \end{tabular}

  \noindent
  \begin{tikzpicture}
    \begin{axis}[width=\textwidth,ybar stacked,ymin=-1,ymax=100]
      \addplot[color=black, fill=black] coordinates { %s };
      \addplot[color=green, fill=green] coordinates { %s };
      \addplot[color=blue, fill=blue] coordinates { %s };
      \addplot[color=red, fill=red] coordinates { %s };
    \end{axis}
  \end{tikzpicture}
  \newpage
""" % (domainname,
       100 * sum(last_layer_percentages) / float(len(last_layer_percentages)),
       100 * sum(second_to_last_layer_percentages) / float(len(second_to_last_layer_percentages)),
       100 * sum(other_layers_percentages) / float(len(other_layers_percentages)),
       " ".join(["(%s,%s)" % (i+1, int(o * a)) for i,(o,a) in enumerate(zip(other_layers_percentages,all_layers_scores))]),
       " ".join(["(%s,%s)" % (i+1, int(s * a)) for i,(s,a) in enumerate(zip(second_to_last_layer_percentages,all_layers_scores))]),
       " ".join(["(%s,%s)" % (i+1, int(l * a)) for i,(l,a) in enumerate(zip(last_layer_percentages,all_layers_scores))]),
       " ".join(["(%s,%s)" % (i+1,-int(e)) for i,e in enumerate(errors)]),
      ))
    outfile.write("\\end{document}\n")
    outfile.close()

def sort_expansion_limit_files(filenames):
    times_per_expansions = defaultdict(list)
    for filename in filenames:        
        results = parse_results(filename)
        p = results[0].problemresults[0]
        time_spent = p.get("h_plus_time")
        if time_spent is None:
            time_spent = float(p.get("h_plus_guess_time"))
        if float(p.get("bnb_expansions",0)) > 1:
            times_per_expansions[results[0].name].append(time_spent / float(p.get("bnb_expansions")))
#        if p.get("error") == "Exceeded expansion limit of 10000":
#            shutil.copy(filename, "limit")
#        elif p.get("error") is None:
#            if p.get("bnb_expansions") == 0:
#                shutil.copy(filename, "no-search")
#            else:
#                shutil.copy(filename, "done")
#        else:
#            shutil.copy(filename, "error")
    for d in sorted(times_per_expansions.keys()):
        print d, " ".join(map(str,times_per_expansions[d]))

        

def do_custom_stuff(filenames):
    """
    temporary stuff, for test that are only useful once or twice
    """
    sort_expansion_limit_files(filenames)
    # print_ida_layer_evaluation(filenames)
    
if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Evaluate result files')
    group = parser.add_mutually_exclusive_group()
    group.add_argument('-x', '--custom', nargs="*")
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
    elif args.custom:
        do_custom_stuff(args.custom)
    else:
        printmissingresults(args.printmissing)

