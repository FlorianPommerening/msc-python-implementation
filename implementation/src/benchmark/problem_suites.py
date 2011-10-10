import os, re, glob

BENCHMARKS_DIR = '/home/flogo/downward/benchmarks/'

def guessDomainFile(problemFile):
    basedir = os.path.dirname(problemFile) + '/'
    match = re.match(basedir + r"p(\d\d\d?)", problemFile)
    domainfile = ""
    if match:
        domainfile = basedir + "domain_p%s.pddl" % match.groups(1)
        if not os.path.exists(domainfile):
            domainfile = basedir + "p%s-domain.pddl" % match.groups(1)
    if not os.path.exists(domainfile):
        domainfile = basedir + "domain.pddl"
    return domainfile

def guessDomainName(domainFile):
    return os.path.basename(os.path.dirname(domainFile))


def listproblems(basedir):
    result = []
    problemfiles = [file for file in glob.glob(basedir + '*')
                        if file.find("domain", len(basedir)) == -1]
    for problemfile in problemfiles:
        problemfile = problemfile.replace("\\", "/")
        domainfile = guessDomainFile(problemfile)
        assert os.path.exists(domainfile), "could not find domainfile for problem '%s'" % problemfile
        result.append((problemfile, domainfile))
    sortlist = [(map(int, re.findall(r"\d+", problemfile)), (problemfile, domainfile)) for (problemfile, domainfile) in result]
    return [entry for (_, entry) in sorted(sortlist)]

LMCUT_SUITE = [(domainname, listproblems("%s%s/" % (BENCHMARKS_DIR, domainname))) 
                for domainname in
                ['airport', 'blocks', 'depot', 'driverlog', 'freecell',
                 'gripper', 'logistics00', 'logistics98', 'miconic', 'mprime',
                 'mystery', 'openstacks-strips', 'pathways-noneg', 'pipesworld-notankage', 'pipesworld-tankage',
                 'psr-small', 'rovers', 'tpp', 'trucks-strips', 'zenotravel']
              ]

def domain_size(domainname, problem_suite=None):
    if problem_suite is None:
        problem_suite = LMCUT_SUITE
    for (d, problems) in problem_suite:
        if (d == domainname):
            return len(problems)
    return 0

def get_problem_id(domainname, problem_name, problem_suite=None):
    if problem_suite is None:
        problem_suite = LMCUT_SUITE
    for (d, problems) in problem_suite:
        if (d == domainname):
            for (i,p) in enumerate(problems):
                if os.path.splitext(os.path.basename(p[0]))[0] == problem_name:
                    return i
    return -1
    

def problem_subset(domains=None, problems=None, problem_suite=None):
    if not problem_suite:
        problem_suite = LMCUT_SUITE
    domain_names = [domainname for (domainname, _) in problem_suite]
    domain_ids = []
    if domains is None:
        domains = []
    if type(domains) == int or type(domains) == str:
        domains = [domains]
    if type(problems) == dict:
        for domain in sorted(problems.keys()):
            if domain not in domains:
                domains.append(domain)    
    if not domains:
        domains = range(len(problem_suite))
    for domain in domains:
        if type(domain) == str:
            domain_id = domain_names.index(domain)
            if domain_id == -1:
                print "Unknown domain '%s'" % domain
                # also add -1 to the list, so matching the problemsets is easier 
            domain_ids.append(domain_id)
        elif type(domain) == int:
            domain_ids.append(domain)
        else:
            print "Unknown domain '%s'" % domain

    problem_idlist = []
    max_problems = max(len(problems) for (domainname, problems) in problem_suite)
    if not problems:
        problem_idlist = [range(max_problems) for _ in xrange(len(domain_ids))]
    elif type(problems) == int:
        problem_idlist = [[problems] for _ in xrange(len(domain_ids))]
    elif type(problems) == dict:
        domain_to_problems = problems
        for domain in domains:
            if domain_to_problems.has_key(domain):
                domain_problem_id_list = []
                for problem_desc in domain_to_problems[domain]:
                    if type(problem_desc) == int:
                        domain_problem_id_list.append(problem_desc)
                    elif type(problem_desc) == str:
                        prob_id = get_problem_id(domain, problem_desc, problem_suite)
                        if prob_id == -1:
                            print "unknown task", domain, problem_desc
                            continue
                        domain_problem_id_list.append(prob_id)
                    else:
                        print "unknown type describing problem", type(problem_desc)
                problem_idlist.append(domain_problem_id_list)
            else:
                problem_idlist.append(range(max_problems))
    elif type(problems) == list:
        if type(problems[0]) == int:
            problem_idlist = [problems for _ in xrange(len(domain_ids))]
        elif type(problems[0]) == list:
            problem_idlist = problems
            for _ in xrange(len(problems), len(domain_ids)):
                problem_idlist.append(range(max_problems))
    else:
        print "Unkown type of problems list '%s'" % type(problems)
    selected_subset = []
    for domain_id, problem_ids in zip(domain_ids, problem_idlist):
        if domain_id < 0 or domain_id >= len(problem_suite):
            continue
        (domainname, filepaths) = problem_suite[domain_id]
        selected_paths = []
        for problem_id in problem_ids:
            if problem_id < 0 or problem_id >= len(filepaths) or filepaths[problem_id] in selected_paths:
                continue
            selected_paths.append(filepaths[problem_id])
        selected_subset.append((domainname, selected_paths))
    return selected_subset

# steinertree(h^FF) == h^LMcut: no search neccesary
# 367 problems
LMCUT_TRIVIAL = problem_subset(problems={
        'airport': [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 39, 40, 42],
        'blocks': [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 29, 30, 31, 32, 33, 34],
        'depot': [7, 12],
        'driverlog': [0, 2], 
        'gripper': [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19],
        'logistics00': [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21],
        'logistics98': [1, 2, 3, 4, 11, 30, 31, 32, 34],
        'miconic': [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],
        'mprime': [16, 20, 24, 31],
        'mystery': [16, 20, 24],
        'pathways-noneg': [0, 1, 2, 3, 4],
        'pipesworld-notankage': [0],
        'psr-small': [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49], 
        'rovers': [0, 1, 2, 3, 4, 5, 7, 13, 14],
        'tpp': [0, 1, 2, 3, 5, 6, 11],
        'zenotravel': [0, 1, 2, 3, 4, 5, 7, 8],
    })

# most tests should run in under a second per problem
# 113 problems
LMCUT_EASY = problem_subset(problems={
        'airport': [38, 41, 43, 44, 45],
        'blocks': [28],
        'depot': [0, 1, 2, 3, 6, 9, 13, 16],
        'driverlog': [1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
        'logistics00': [22, 23, 24, 25, 27],
        'logistics98': [0, 6, 10],
        'mprime': [0, 1, 2, 3, 4, 6, 7, 10, 11, 15, 18, 26, 27, 28, 30, 33, 34],
        'mystery': [0, 1, 2, 3, 4, 6, 7, 8, 10, 11, 15, 17, 18, 23, 25, 26, 27, 28, 29],
        'pipesworld-notankage': [1, 2, 3, 4, 5, 6, 10, 20, 40],
        'pipesworld-tankage': [0, 1, 2, 3, 4],
        'rovers': [6, 8, 9, 11, 15, 16],
        'tpp': [4, 7, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19],
        'trucks-strips': [0, 1, 2, 3, 4, 5, 6],
        'zenotravel': [6, 10, 11, 12],
    })

# can be solved fast fast, but not always
# 4 problems
LMCUT_MEDIUM = problem_subset(problems={
        'airport': [46],
        'depot': [4],
        'mystery': [22],
        'logistics98': [33]
    })

# sometimes unsolvable, but it should be possible to get these
# 69 problems
LMCUT_HARD = problem_subset(problems={
        'airport': [47, 48, 49],
        'depot': [5, 8, 15, 18, 20],
        'driverlog': [13, 14],
        'freecell': [0, 4, 5],
        'logistics00': [26],
        'logistics98': [5, 7],
        'mprime': [8, 9, 13, 14, 23, 25, 29, 32],
        'mystery': [5, 9, 12, 13, 14, 19, 21],
        'openstacks-strips': [0, 1, 2, 3, 4],
        'pipesworld-notankage': [7, 8, 11, 12, 14, 15, 16, 21, 22, 23, 36],
        'pipesworld-tankage': [5, 10, 14, 16, 20, 40],
        'rovers': [10, 12, 17, 18, 24, 26],
        'tpp': [20, 21, 22],
        'trucks-strips': [7, 8, 9, 10, 11, 12],
        'zenotravel': [9],
    })

# not solved yet, but it should be possible to get these
# 282 problems
LMCUT_VERY_HARD = problem_subset(problems={
        'depot': [10, 11, 14, 17, 19, 21],
        'driverlog': [15, 16, 17, 18, 19],
        'freecell': [1, 2, 3, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],
        'logistics98': [8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29],
        'mprime': [5, 12, 17, 19, 21, 22],
        'pathways-noneg': [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29],
        'pipesworld-notankage': [9, 13, 17, 18, 19, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 37, 38, 39, 41, 42, 43, 44, 45, 46, 47, 48, 49],
        'pipesworld-tankage': [6, 7, 8, 9, 11, 12, 13, 15, 17, 18, 19, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 41, 42, 43, 44, 45, 46, 47, 48, 49],
        'openstacks-strips': [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29],
        'rovers': [19, 20, 21, 22, 23, 25, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39],
        'tpp': [23, 24, 25, 26, 27, 28, 29],
        'trucks-strips': [13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29],
        'zenotravel': [13, 14, 15, 16, 17, 18, 19],
    })

