#!/usr/bin/python
# -*- coding: utf-8 -*-

from benchmark.problem_suites import problem_subset, LMCUT_TRIVIAL, LMCUT_EASY, LMCUT_MEDIUM, LMCUT_HARD, LMCUT_VERY_HARD, LMCUT_SUITE
from Cheetah.Template import Template
import os

# defines which queue to use for one task. Possible values are "athlon.q" and
# "athlon_core.q". The former value configures the use of a whole cpu,
# while the latter option configures the use of a single cpu core.
queue = "athlon_core.q"

# defines the timeout for one taks. The time format is
# "hours:minutes:seconds", eg, a value of "0:30:0" sets the timeout to
# 30 minutes. If timout is set to None, then there is no timeout.
timeout = '1:00:0'

# defines the maximum amount of available memory for one task. The
# value's format is either "<mem>M" or "<mem>G", where <mem> is an
# integer number, M stands for MByte and G for GByte. If memout is
# None, then there is no memory bound.
memout = "2G"

# defines the different configurations of the program to benchmark.
# The key of each entry represents the name of this configuration, the
# value gives the name of the executable (here mcta), and the
# arguments.
configurations = {
        './logs' : './hplusbnb ',
        }

# defines the benchmark instances. Each entry consists of a name for
# this benchmark (eg. 'C1'), and a string containing the input file(s)
# for this benchmark.
benchmarks = {}
dirs = set()
for (domainname, paths) in problem_subset(problems={
'logistics98': ['prob26'],
'pipesworld-notankage': ['p37-net4-b20-g5'],
}):
    for i, (p, d) in enumerate(paths):
        problemname = os.path.splitext(os.path.basename(p))[0]
        dirs.add("results/%s" % (domainname))
        dirs.add("results/%s/%s" % (domainname, problemname))
        for x in xrange(0, 50):
            benchmarks["%s_%s_%d" % (domainname, problemname, x)] = "%s %s results/%s/%s/%s_%s_%d.result" % (p, d, domainname, problemname, domainname, problemname, x)

# the create_tasks functions generates a file containing all possible
# combinations of configurations and benchmarks. The resulting job
# file <filename> can then be submitted with
#
# > qsub <filename>
#
# given a configuration and a benchmark, eg, configuration['config-1']
# and benchmarks['C1'], the following command will be executed on the
# GKIGrid:
#
# > mcta -o2 -h1 -b -q C1.ta C.q &> config-1/C1-$JOB_ID.$SGE_TASK_ID.result
#
# the expressions $JOB_ID and $SGE_TASK_ID will be replaced by the
# grid engine. The $JOB_ID is the same for all tasks of the jobfile,
# the $SGE_TASK_ID is the id for the current task.
def create_tasks(filename, configurations, benchmarks):
    tasks = ['mkdir ./logs']
    for directory in sorted(dirs):
        tasks.append('mkdir %s' % directory)
    for conf, cmdline in sorted(configurations.iteritems()):
        for experiment, input_files in sorted(benchmarks.iteritems()):
            tasks.append("%s %s &> %s/%s_$JOB_ID.$SGE_TASK_ID.log" % (cmdline, input_files, conf, experiment))

    template = Template(file='job.tmpl',
                        searchList=[{'tasks'   : tasks,
                                     'queue'   : queue,
                                     'timeout' : timeout,
                                     'memout'  : memout}])    
    f = file(filename, 'w')
    f.write(str(template))
    f.close()

if __name__ == '__main__':
    # example usage
    create_tasks("job.q", configurations, benchmarks)

