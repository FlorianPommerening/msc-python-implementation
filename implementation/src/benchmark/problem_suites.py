import os, re, glob

BENCHMARKS_DIR = '../../../downward/benchmarks/'

def listproblems(basedir):
    result = []
    problemfiles = [file for file in glob.glob(basedir + '*')
                        if file.find("domain", len(basedir)) == -1]
    for problemfile in problemfiles:
        problemfile = problemfile.replace("\\", "/")
        match = re.match(basedir + r"p(\d\d)", problemfile)
        domainfile = ""
        if match:
            domainfile = basedir + "domain_p%s.pddl" % match.groups(1)
            if not os.path.exists(domainfile):
                domainfile = basedir + "p%s-domain.pddl" % match.groups(1)
        if not os.path.exists(domainfile):
            domainfile = basedir + "domain.pddl"

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

def problem_subset(domains=None, problems=None, problem_suite=LMCUT_SUITE):
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
    if type(problems) == int:
        problem_idlist = [[problems] for _ in xrange(len(domain_ids))]
    elif type(problems) == dict:
        domain_to_problems = problems
        for domain in domains:
            if domain_to_problems.has_key(domain):
                problem_idlist.append(domain_to_problems[domain])
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
        print "Unkown type of problems list"
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

# most tests run within 10 seconds per problem
LMCUT_EASY = problem_subset(problems={
        "airport":[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, ],
        "blocks":[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, ],
        "depot":[0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 12, 13, 15, ],
        "driverlog":[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, ],
        "freecell":[0, 1, 2, 3, 4, 5, 6, 7, 13, ],
        "gripper":[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, ],
        "logistics00":[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, ],
        "logistics98":[0, 1, 4, 6, 10, 30, 31, 32, 33, 34, ],
        "miconic":[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 97, 98, 99, ],
        "mprime":[0, 2, 3, 4, 6, 8, 10, 11, 24, 27, 28, 31, 34, ],
        "mystery":[0, 1, 2, 3, 4, 6, 7, 8, 10, 11, 15, 17, 24, 25, 26, 27, 28, ],
        "openstacks-strips":[0, 1, 2, 3, 4, ],
        "pathways-noneg":[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 14, ],
        "pipesworld-notankage":[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, ],
        "pipesworld-tankage":[0, 1, 2, 3, 4, 5, 6, 7, 10, 11, 13, 14, 30, ],
        "psr-small":[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, ],
        "rovers":[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, ],
        "tpp":[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, ],
        "trucks-strips":[0, 1, 2, 3, 4, ],
        "zenotravel":[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, ]
    })
