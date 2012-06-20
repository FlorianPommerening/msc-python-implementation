#! /bin/bash
#$ -S /bin/bash
#$ -m n
#$ -cwd
#$ -e log 
#$ -o log
#$ -l h_cpu=00:30:00
#$ -l h_vmem=2G
#$ -q all.q
#$ -t 1-500

export PATH=~/bin:$PATH

if [ 1 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 2 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 3 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 4 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 5 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 6 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 7 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 8 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 9 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 10 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 11 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 12 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 13 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 14 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 15 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 16 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 17 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 18 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 19 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 20 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 21 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p21
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 22 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p22
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 23 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p23
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 24 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p24
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 25 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p25
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 26 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p26
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 27 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p27
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 28 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p28
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 29 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p29
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 30 -eq $SGE_TASK_ID ]; then
    cd elevators-opt08-strips/p30
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 31 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 32 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 33 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 34 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 35 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 36 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 37 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 38 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 39 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 40 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 41 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 42 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 43 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 44 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 45 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 46 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 47 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 48 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 49 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 50 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 51 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p21
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 52 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p22
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 53 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p23
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 54 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p24
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 55 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p25
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 56 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p26
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 57 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p27
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 58 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p28
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 59 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p29
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 60 -eq $SGE_TASK_ID ]; then
    cd parcprinter-08-strips/p30
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 61 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 62 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 63 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 64 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 65 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 66 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 67 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 68 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 69 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 70 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 71 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 72 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 73 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 74 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 75 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 76 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 77 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 78 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 79 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 80 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 81 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p21
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 82 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p22
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 83 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p23
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 84 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p24
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 85 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p25
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 86 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p26
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 87 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p27
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 88 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p28
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 89 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p29
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 90 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-08-strips/p30
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 91 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 92 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 93 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 94 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 95 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 96 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 97 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 98 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 99 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 100 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 101 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 102 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 103 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 104 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 105 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 106 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 107 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 108 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 109 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 110 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 111 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p21
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 112 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p22
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 113 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p23
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 114 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p24
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 115 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p25
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 116 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p26
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 117 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p27
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 118 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p28
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 119 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p29
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 120 -eq $SGE_TASK_ID ]; then
    cd transport-opt08-strips/p30
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 121 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 122 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 123 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 124 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 125 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 126 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 127 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 128 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 129 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 130 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 131 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 132 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 133 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 134 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 135 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 136 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 137 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 138 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 139 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 140 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 141 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p21
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 142 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p22
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 143 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p23
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 144 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p24
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 145 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p25
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 146 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p26
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 147 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p27
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 148 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p28
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 149 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p29
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 150 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt08-strips/p30
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 151 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile01-001
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 152 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile01-002
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 153 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile01-003
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 154 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile01-004
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 155 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile02-005
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 156 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile02-006
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 157 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile02-007
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 158 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile02-008
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 159 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile03-009
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 160 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile03-010
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 161 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile03-011
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 162 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile03-012
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 163 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile04-013
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 164 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile04-014
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 165 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile04-015
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 166 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile04-016
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 167 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile05-017
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 168 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile05-018
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 169 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile05-019
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 170 -eq $SGE_TASK_ID ]; then
    cd barman-opt11-strips/pfile05-020
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 171 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 172 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 173 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 174 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 175 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 176 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 177 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 178 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 179 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 180 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 181 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 182 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 183 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 184 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 185 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 186 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 187 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 188 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 189 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 190 -eq $SGE_TASK_ID ]; then
    cd elevators-opt11-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 191 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p01-001
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 192 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p01-002
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 193 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p02-003
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 194 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p02-004
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 195 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p03-005
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 196 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p03-006
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 197 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p04-007
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 198 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p04-008
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 199 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p05-009
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 200 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p05-010
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 201 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p06-011
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 202 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p06-012
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 203 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p07-013
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 204 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p07-014
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 205 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p08-015
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 206 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p08-016
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 207 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p09-017
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 208 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p09-018
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 209 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p10-019
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 210 -eq $SGE_TASK_ID ]; then
    cd floortile-opt11-strips/opt-p10-020
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 211 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 212 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 213 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 214 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 215 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 216 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 217 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 218 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 219 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 220 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 221 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 222 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 223 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 224 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 225 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 226 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 227 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 228 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 229 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 230 -eq $SGE_TASK_ID ]; then
    cd parcprinter-opt11-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 231 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 232 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 233 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 234 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 235 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 236 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 237 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 238 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 239 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 240 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 241 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 242 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 243 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 244 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 245 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 246 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 247 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 248 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 249 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 250 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-opt11-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 251 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 252 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 253 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 254 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 255 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 256 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 257 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 258 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 259 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 260 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 261 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 262 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 263 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 264 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 265 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 266 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 267 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 268 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 269 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 270 -eq $SGE_TASK_ID ]; then
    cd transport-opt11-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 271 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 272 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 273 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 274 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 275 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 276 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 277 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 278 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 279 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 280 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 281 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 282 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 283 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 284 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 285 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 286 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 287 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 288 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 289 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 290 -eq $SGE_TASK_ID ]; then
    cd woodworking-opt11-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 291 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 292 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 293 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 294 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 295 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 296 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 297 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 298 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 299 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 300 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 301 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 302 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 303 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 304 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 305 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 306 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 307 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 308 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 309 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 310 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 311 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p21
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 312 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p22
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 313 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p23
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 314 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p24
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 315 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p25
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 316 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p26
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 317 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p27
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 318 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p28
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 319 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p29
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 320 -eq $SGE_TASK_ID ]; then
    cd elevators-sat08-strips/p30
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 321 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 322 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 323 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 324 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 325 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 326 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 327 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 328 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 329 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 330 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 331 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 332 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 333 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 334 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 335 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 336 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 337 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 338 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 339 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 340 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 341 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p21
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 342 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p22
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 343 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p23
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 344 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p24
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 345 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p25
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 346 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p26
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 347 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p27
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 348 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p28
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 349 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p29
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 350 -eq $SGE_TASK_ID ]; then
    cd transport-sat08-strips/p30
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 351 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 352 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 353 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 354 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 355 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 356 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 357 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 358 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 359 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 360 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 361 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 362 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 363 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 364 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 365 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 366 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 367 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 368 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 369 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 370 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 371 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p21
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 372 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p22
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 373 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p23
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 374 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p24
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 375 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p25
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 376 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p26
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 377 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p27
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 378 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p28
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 379 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p29
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 380 -eq $SGE_TASK_ID ]; then
    cd woodworking-sat08-strips/p30
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 381 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile06-021
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 382 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile06-022
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 383 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile06-023
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 384 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile06-024
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 385 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile07-025
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 386 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile07-026
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 387 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile07-027
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 388 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile07-028
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 389 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile08-029
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 390 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile08-030
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 391 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile08-031
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 392 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile08-032
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 393 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile09-033
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 394 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile09-034
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 395 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile09-035
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 396 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile09-036
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 397 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile10-037
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 398 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile10-038
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 399 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile10-039
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 400 -eq $SGE_TASK_ID ]; then
    cd barman-sat11-strips/pfile10-040
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 401 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 402 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 403 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 404 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 405 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 406 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 407 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 408 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 409 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 410 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 411 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 412 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 413 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 414 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 415 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 416 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 417 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 418 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 419 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 420 -eq $SGE_TASK_ID ]; then
    cd elevators-sat11-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 421 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p01-001
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 422 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p01-002
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 423 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p02-003
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 424 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p02-004
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 425 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p03-005
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 426 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p03-006
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 427 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p04-007
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 428 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p04-008
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 429 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p05-009
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 430 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p05-010
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 431 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p06-011
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 432 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p06-012
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 433 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p07-013
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 434 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p07-014
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 435 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p08-015
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 436 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p08-016
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 437 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p09-017
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 438 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p09-018
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 439 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p10-019
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 440 -eq $SGE_TASK_ID ]; then
    cd floortile-sat11-strips/seq-p10-020
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 441 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 442 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 443 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 444 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 445 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 446 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 447 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 448 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 449 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 450 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 451 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 452 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 453 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 454 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 455 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 456 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 457 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 458 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 459 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 460 -eq $SGE_TASK_ID ]; then
    cd parcprinter-sat11-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 461 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 462 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 463 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 464 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 465 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 466 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 467 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 468 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 469 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 470 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 471 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 472 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 473 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 474 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 475 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 476 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 477 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 478 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 479 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 480 -eq $SGE_TASK_ID ]; then
    cd scanalyzer-sat11-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 481 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 482 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 483 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 484 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 485 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 486 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 487 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 488 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 489 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 490 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 491 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 492 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 493 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 494 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 495 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 496 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 497 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 498 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 499 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 500 -eq $SGE_TASK_ID ]; then
    cd transport-sat11-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../../../downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
