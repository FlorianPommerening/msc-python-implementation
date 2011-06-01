#!/usr/bin/python
# -*- coding: utf-8 -*-

from benchmark.problem_suites import problem_subset, LMCUT_EASY, LMCUT_MEDIUM, LMCUT_HARD, LMCUT_SUITE
from Cheetah.Template import Template

# defines which queue to use for one task. Possible values are "athlon.q" and
# "athlon_core.q". The former value configures the use of a whole cpu,
# while the latter option configures the use of a single cpu core.
queue = "amd_core.q"

# defines the timeout for one taks. The time format is
# "hours:minutes:seconds", eg, a value of "0:30:0" sets the timeout to
# 30 minutes. If timout is set to None, then there is no timeout.
timeout = '0:11:0'

# defines the maximum amount of available memory for one task. The
# value's format is either "<mem>M" or "<mem>G", where <mem> is an
# integer number, M stands for MByte and G for GByte. If memout is
# None, then there is no memory bound.
memout = "500M"

# defines the different configurations of the program to benchmark.
# The key of each entry represents the name of this configuration, the
# value gives the name of the executable (here mcta), and the
# arguments.
configurations = {
        'internal-hmax' : 'benchmark.py -b hmax_internal -t600 -od ../results/internal',
        'external-hmax' : 'benchmark.py -b hmax_external -t600 -od ../results/external',
        }

# defines the benchmark instances. Each entry consists of a name for
# this benchmark (eg. 'C1'), and a string containing the input file(s)
# for this benchmark.
benchmarks = {}
for (domainname, paths) in LMCUT_SUITE:
    for i, (p, d) in enumerate(paths):
        benchmarks["%s-%03.d" % (domainname, i)] = "-pf %s -df %s -o results_%s_%03.d.txt" % (p, d, domainname, i)


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
    tasks = []
    for conf, cmdline in sorted(configurations.iteritems()):
        for experiment, input_files in sorted(benchmarks.iteritems()):
            tasks.append("%s %s &> %s/%s" % (cmdline, input_files, conf, experiment))

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

