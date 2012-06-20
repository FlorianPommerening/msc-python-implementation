#!/usr/bin/python
# -*- coding: utf-8 -*-

from benchmark.problem_suites import *
from Cheetah.Template import Template
import os

# defines which queue to use for one task. Possible values are "athlon.q" and
# "athlon_core.q". The former value configures the use of a whole cpu,
# while the latter option configures the use of a single cpu core.
queue = "all.q"

# defines the timeout for one taks. The time format is
# "hours:minutes:seconds", eg, a value of "0:30:0" sets the timeout to
# 30 minutes. If timout is set to None, then there is no timeout.
timeout = '00:30:00'

# defines the maximum amount of available memory for one task. The
# value's format is either "<mem>M" or "<mem>G", where <mem> is an
# integer number, M stands for MByte and G for GByte. If memout is
# None, then there is no memory bound.
memout = "2G"

tasks = []
for (domainname, paths) in problem_subset(problem_suite=ACTION_COST_SUITE_ALL):
    for i, (p, d) in enumerate(paths):
        problemname = os.path.splitext(os.path.basename(p))[0]
        p_path_on_grid = p.replace('/home/pommerening/projects/fastdownward/benchmarks/', '/home/ifi/pommeren/benchmarks/')
        d_path_on_grid = d.replace('/home/pommerening/projects/fastdownward/benchmarks/', '/home/ifi/pommeren/benchmarks/')
        tasks.append('''
    mkdirhier %s/%s
    cd %s/%s
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py %s %s
    /usr/bin/time --format "%%U\\n%%S\\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time''' % (domainname, problemname, domainname, problemname, d_path_on_grid, p_path_on_grid))


def create_tasks(filename, tasks):
    template = Template(file='job-basel.tmpl',
                        searchList=[{'tasks'   : tasks,
                                     'queue'   : queue,
                                     'timeout' : timeout,
                                     'memout'  : memout}])    
    f = file(filename, 'w')
    f.write(str(template))
    f.close()

if __name__ == '__main__':
    create_tasks("job-preprocess.q", tasks)

