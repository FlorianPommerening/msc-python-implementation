#! /bin/bash
#$ -S /bin/bash
#$ -m n
#$ -cwd
#$ -e log 
#$ -o log
#$ -l h_cpu=00:30:00
#$ -l h_vmem=2G
#$ -q all.q
#$ -t 1-520

export PATH=~/bin:$PATH

if [ 1 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p01
    cd elevators-opt08-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p01-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 2 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p02
    cd elevators-opt08-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p02-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 3 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p03
    cd elevators-opt08-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p03-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 4 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p04
    cd elevators-opt08-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p04-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 5 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p05
    cd elevators-opt08-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p05-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 6 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p06
    cd elevators-opt08-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p06-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 7 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p07
    cd elevators-opt08-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p07-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 8 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p08
    cd elevators-opt08-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p08-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 9 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p09
    cd elevators-opt08-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p09-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 10 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p10
    cd elevators-opt08-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p10-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 11 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p11
    cd elevators-opt08-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p11-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 12 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p12
    cd elevators-opt08-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p12-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 13 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p13
    cd elevators-opt08-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p13-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 14 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p14
    cd elevators-opt08-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p14-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 15 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p15
    cd elevators-opt08-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p15-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 16 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p16
    cd elevators-opt08-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p16-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 17 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p17
    cd elevators-opt08-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p17-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 18 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p18
    cd elevators-opt08-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p18-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 19 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p19
    cd elevators-opt08-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p19-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 20 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p20
    cd elevators-opt08-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p20-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 21 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p21
    cd elevators-opt08-strips/p21
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p21-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p21.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 22 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p22
    cd elevators-opt08-strips/p22
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p22-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p22.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 23 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p23
    cd elevators-opt08-strips/p23
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p23-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p23.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 24 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p24
    cd elevators-opt08-strips/p24
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p24-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p24.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 25 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p25
    cd elevators-opt08-strips/p25
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p25-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p25.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 26 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p26
    cd elevators-opt08-strips/p26
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p26-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p26.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 27 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p27
    cd elevators-opt08-strips/p27
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p27-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p27.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 28 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p28
    cd elevators-opt08-strips/p28
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p28-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p28.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 29 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p29
    cd elevators-opt08-strips/p29
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p29-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p29.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 30 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt08-strips/p30
    cd elevators-opt08-strips/p30
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p30-domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt08-strips/p30.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 31 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p01
    cd parcprinter-08-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p01-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 32 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p02
    cd parcprinter-08-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p02-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 33 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p03
    cd parcprinter-08-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p03-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 34 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p04
    cd parcprinter-08-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p04-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 35 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p05
    cd parcprinter-08-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p05-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 36 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p06
    cd parcprinter-08-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p06-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 37 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p07
    cd parcprinter-08-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p07-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 38 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p08
    cd parcprinter-08-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p08-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 39 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p09
    cd parcprinter-08-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p09-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 40 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p10
    cd parcprinter-08-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p10-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 41 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p11
    cd parcprinter-08-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p11-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 42 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p12
    cd parcprinter-08-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p12-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 43 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p13
    cd parcprinter-08-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p13-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 44 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p14
    cd parcprinter-08-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p14-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 45 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p15
    cd parcprinter-08-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p15-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 46 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p16
    cd parcprinter-08-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p16-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 47 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p17
    cd parcprinter-08-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p17-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 48 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p18
    cd parcprinter-08-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p18-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 49 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p19
    cd parcprinter-08-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p19-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 50 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p20
    cd parcprinter-08-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p20-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 51 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p21
    cd parcprinter-08-strips/p21
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p21-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p21.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 52 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p22
    cd parcprinter-08-strips/p22
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p22-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p22.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 53 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p23
    cd parcprinter-08-strips/p23
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p23-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p23.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 54 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p24
    cd parcprinter-08-strips/p24
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p24-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p24.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 55 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p25
    cd parcprinter-08-strips/p25
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p25-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p25.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 56 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p26
    cd parcprinter-08-strips/p26
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p26-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p26.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 57 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p27
    cd parcprinter-08-strips/p27
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p27-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p27.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 58 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p28
    cd parcprinter-08-strips/p28
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p28-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p28.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 59 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p29
    cd parcprinter-08-strips/p29
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p29-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p29.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 60 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-08-strips/p30
    cd parcprinter-08-strips/p30
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p30-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-08-strips/p30.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 61 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p01
    cd scanalyzer-08-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p01-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 62 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p02
    cd scanalyzer-08-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p02-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 63 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p03
    cd scanalyzer-08-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p03-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 64 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p04
    cd scanalyzer-08-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p04-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 65 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p05
    cd scanalyzer-08-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p05-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 66 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p06
    cd scanalyzer-08-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p06-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 67 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p07
    cd scanalyzer-08-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p07-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 68 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p08
    cd scanalyzer-08-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p08-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 69 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p09
    cd scanalyzer-08-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p09-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 70 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p10
    cd scanalyzer-08-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p10-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 71 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p11
    cd scanalyzer-08-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p11-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 72 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p12
    cd scanalyzer-08-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p12-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 73 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p13
    cd scanalyzer-08-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p13-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 74 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p14
    cd scanalyzer-08-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p14-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 75 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p15
    cd scanalyzer-08-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p15-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 76 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p16
    cd scanalyzer-08-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p16-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 77 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p17
    cd scanalyzer-08-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p17-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 78 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p18
    cd scanalyzer-08-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p18-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 79 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p19
    cd scanalyzer-08-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p19-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 80 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p20
    cd scanalyzer-08-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p20-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 81 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p21
    cd scanalyzer-08-strips/p21
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p21-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p21.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 82 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p22
    cd scanalyzer-08-strips/p22
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p22-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p22.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 83 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p23
    cd scanalyzer-08-strips/p23
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p23-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p23.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 84 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p24
    cd scanalyzer-08-strips/p24
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p24-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p24.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 85 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p25
    cd scanalyzer-08-strips/p25
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p25-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p25.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 86 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p26
    cd scanalyzer-08-strips/p26
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p26-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p26.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 87 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p27
    cd scanalyzer-08-strips/p27
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p27-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p27.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 88 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p28
    cd scanalyzer-08-strips/p28
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p28-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p28.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 89 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p29
    cd scanalyzer-08-strips/p29
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p29-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p29.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 90 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-08-strips/p30
    cd scanalyzer-08-strips/p30
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p30-domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-08-strips/p30.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 91 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p01
    cd transport-opt08-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p01-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 92 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p02
    cd transport-opt08-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p02-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 93 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p03
    cd transport-opt08-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p03-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 94 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p04
    cd transport-opt08-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p04-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 95 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p05
    cd transport-opt08-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p05-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 96 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p06
    cd transport-opt08-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p06-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 97 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p07
    cd transport-opt08-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p07-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 98 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p08
    cd transport-opt08-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p08-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 99 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p09
    cd transport-opt08-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p09-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 100 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p10
    cd transport-opt08-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p10-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 101 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p11
    cd transport-opt08-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p11-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 102 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p12
    cd transport-opt08-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p12-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 103 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p13
    cd transport-opt08-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p13-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 104 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p14
    cd transport-opt08-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p14-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 105 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p15
    cd transport-opt08-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p15-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 106 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p16
    cd transport-opt08-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p16-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 107 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p17
    cd transport-opt08-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p17-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 108 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p18
    cd transport-opt08-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p18-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 109 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p19
    cd transport-opt08-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p19-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 110 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p20
    cd transport-opt08-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p20-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 111 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p21
    cd transport-opt08-strips/p21
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p21-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p21.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 112 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p22
    cd transport-opt08-strips/p22
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p22-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p22.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 113 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p23
    cd transport-opt08-strips/p23
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p23-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p23.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 114 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p24
    cd transport-opt08-strips/p24
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p24-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p24.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 115 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p25
    cd transport-opt08-strips/p25
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p25-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p25.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 116 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p26
    cd transport-opt08-strips/p26
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p26-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p26.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 117 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p27
    cd transport-opt08-strips/p27
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p27-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p27.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 118 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p28
    cd transport-opt08-strips/p28
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p28-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p28.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 119 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p29
    cd transport-opt08-strips/p29
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p29-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p29.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 120 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt08-strips/p30
    cd transport-opt08-strips/p30
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt08-strips/p30-domain.pddl /home/ifi/pommeren/benchmarks/transport-opt08-strips/p30.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 121 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p01
    cd woodworking-opt08-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p01-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 122 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p02
    cd woodworking-opt08-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p02-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 123 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p03
    cd woodworking-opt08-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p03-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 124 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p04
    cd woodworking-opt08-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p04-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 125 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p05
    cd woodworking-opt08-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p05-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 126 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p06
    cd woodworking-opt08-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p06-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 127 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p07
    cd woodworking-opt08-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p07-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 128 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p08
    cd woodworking-opt08-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p08-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 129 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p09
    cd woodworking-opt08-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p09-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 130 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p10
    cd woodworking-opt08-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p10-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 131 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p11
    cd woodworking-opt08-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p11-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 132 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p12
    cd woodworking-opt08-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p12-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 133 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p13
    cd woodworking-opt08-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p13-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 134 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p14
    cd woodworking-opt08-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p14-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 135 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p15
    cd woodworking-opt08-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p15-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 136 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p16
    cd woodworking-opt08-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p16-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 137 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p17
    cd woodworking-opt08-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p17-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 138 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p18
    cd woodworking-opt08-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p18-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 139 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p19
    cd woodworking-opt08-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p19-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 140 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p20
    cd woodworking-opt08-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p20-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 141 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p21
    cd woodworking-opt08-strips/p21
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p21-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p21.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 142 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p22
    cd woodworking-opt08-strips/p22
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p22-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p22.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 143 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p23
    cd woodworking-opt08-strips/p23
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p23-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p23.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 144 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p24
    cd woodworking-opt08-strips/p24
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p24-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p24.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 145 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p25
    cd woodworking-opt08-strips/p25
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p25-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p25.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 146 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p26
    cd woodworking-opt08-strips/p26
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p26-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p26.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 147 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p27
    cd woodworking-opt08-strips/p27
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p27-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p27.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 148 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p28
    cd woodworking-opt08-strips/p28
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p28-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p28.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 149 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p29
    cd woodworking-opt08-strips/p29
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p29-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p29.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 150 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt08-strips/p30
    cd woodworking-opt08-strips/p30
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p30-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt08-strips/p30.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 151 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile01-001
    cd barman-opt11-strips/pfile01-001
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile01-001.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 152 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile01-002
    cd barman-opt11-strips/pfile01-002
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile01-002.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 153 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile01-003
    cd barman-opt11-strips/pfile01-003
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile01-003.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 154 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile01-004
    cd barman-opt11-strips/pfile01-004
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile01-004.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 155 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile02-005
    cd barman-opt11-strips/pfile02-005
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile02-005.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 156 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile02-006
    cd barman-opt11-strips/pfile02-006
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile02-006.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 157 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile02-007
    cd barman-opt11-strips/pfile02-007
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile02-007.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 158 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile02-008
    cd barman-opt11-strips/pfile02-008
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile02-008.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 159 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile03-009
    cd barman-opt11-strips/pfile03-009
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile03-009.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 160 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile03-010
    cd barman-opt11-strips/pfile03-010
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile03-010.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 161 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile03-011
    cd barman-opt11-strips/pfile03-011
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile03-011.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 162 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile03-012
    cd barman-opt11-strips/pfile03-012
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile03-012.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 163 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile04-013
    cd barman-opt11-strips/pfile04-013
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile04-013.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 164 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile04-014
    cd barman-opt11-strips/pfile04-014
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile04-014.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 165 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile04-015
    cd barman-opt11-strips/pfile04-015
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile04-015.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 166 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile04-016
    cd barman-opt11-strips/pfile04-016
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile04-016.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 167 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile05-017
    cd barman-opt11-strips/pfile05-017
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile05-017.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 168 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile05-018
    cd barman-opt11-strips/pfile05-018
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile05-018.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 169 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile05-019
    cd barman-opt11-strips/pfile05-019
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile05-019.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 170 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-opt11-strips/pfile05-020
    cd barman-opt11-strips/pfile05-020
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-opt11-strips/pfile05-020.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 171 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p01
    cd elevators-opt11-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 172 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p02
    cd elevators-opt11-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 173 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p03
    cd elevators-opt11-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 174 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p04
    cd elevators-opt11-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 175 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p05
    cd elevators-opt11-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 176 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p06
    cd elevators-opt11-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 177 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p07
    cd elevators-opt11-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 178 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p08
    cd elevators-opt11-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 179 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p09
    cd elevators-opt11-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 180 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p10
    cd elevators-opt11-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 181 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p11
    cd elevators-opt11-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 182 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p12
    cd elevators-opt11-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 183 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p13
    cd elevators-opt11-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 184 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p14
    cd elevators-opt11-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 185 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p15
    cd elevators-opt11-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 186 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p16
    cd elevators-opt11-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 187 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p17
    cd elevators-opt11-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 188 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p18
    cd elevators-opt11-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 189 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p19
    cd elevators-opt11-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 190 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-opt11-strips/p20
    cd elevators-opt11-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-opt11-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 191 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p01-001
    cd floortile-opt11-strips/opt-p01-001
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p01-001.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 192 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p01-002
    cd floortile-opt11-strips/opt-p01-002
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p01-002.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 193 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p02-003
    cd floortile-opt11-strips/opt-p02-003
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p02-003.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 194 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p02-004
    cd floortile-opt11-strips/opt-p02-004
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p02-004.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 195 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p03-005
    cd floortile-opt11-strips/opt-p03-005
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p03-005.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 196 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p03-006
    cd floortile-opt11-strips/opt-p03-006
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p03-006.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 197 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p04-007
    cd floortile-opt11-strips/opt-p04-007
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p04-007.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 198 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p04-008
    cd floortile-opt11-strips/opt-p04-008
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p04-008.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 199 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p05-009
    cd floortile-opt11-strips/opt-p05-009
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p05-009.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 200 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p05-010
    cd floortile-opt11-strips/opt-p05-010
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p05-010.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 201 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p06-011
    cd floortile-opt11-strips/opt-p06-011
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p06-011.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 202 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p06-012
    cd floortile-opt11-strips/opt-p06-012
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p06-012.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 203 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p07-013
    cd floortile-opt11-strips/opt-p07-013
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p07-013.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 204 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p07-014
    cd floortile-opt11-strips/opt-p07-014
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p07-014.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 205 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p08-015
    cd floortile-opt11-strips/opt-p08-015
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p08-015.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 206 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p08-016
    cd floortile-opt11-strips/opt-p08-016
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p08-016.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 207 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p09-017
    cd floortile-opt11-strips/opt-p09-017
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p09-017.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 208 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p09-018
    cd floortile-opt11-strips/opt-p09-018
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p09-018.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 209 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p10-019
    cd floortile-opt11-strips/opt-p10-019
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p10-019.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 210 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-opt11-strips/opt-p10-020
    cd floortile-opt11-strips/opt-p10-020
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-opt11-strips/opt-p10-020.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 211 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p01
    cd parcprinter-opt11-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p01-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 212 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p02
    cd parcprinter-opt11-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p02-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 213 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p03
    cd parcprinter-opt11-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p03-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 214 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p04
    cd parcprinter-opt11-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p04-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 215 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p05
    cd parcprinter-opt11-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p05-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 216 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p06
    cd parcprinter-opt11-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p06-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 217 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p07
    cd parcprinter-opt11-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p07-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 218 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p08
    cd parcprinter-opt11-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p08-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 219 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p09
    cd parcprinter-opt11-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p09-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 220 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p10
    cd parcprinter-opt11-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p10-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 221 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p11
    cd parcprinter-opt11-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p11-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 222 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p12
    cd parcprinter-opt11-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p12-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 223 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p13
    cd parcprinter-opt11-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p13-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 224 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p14
    cd parcprinter-opt11-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p14-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 225 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p15
    cd parcprinter-opt11-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p15-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 226 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p16
    cd parcprinter-opt11-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p16-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 227 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p17
    cd parcprinter-opt11-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p17-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 228 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p18
    cd parcprinter-opt11-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p18-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 229 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p19
    cd parcprinter-opt11-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p19-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 230 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-opt11-strips/p20
    cd parcprinter-opt11-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p20-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-opt11-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 231 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p01
    cd scanalyzer-opt11-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 232 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p02
    cd scanalyzer-opt11-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 233 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p03
    cd scanalyzer-opt11-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 234 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p04
    cd scanalyzer-opt11-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 235 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p05
    cd scanalyzer-opt11-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 236 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p06
    cd scanalyzer-opt11-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 237 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p07
    cd scanalyzer-opt11-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 238 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p08
    cd scanalyzer-opt11-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 239 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p09
    cd scanalyzer-opt11-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 240 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p10
    cd scanalyzer-opt11-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 241 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p11
    cd scanalyzer-opt11-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 242 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p12
    cd scanalyzer-opt11-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 243 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p13
    cd scanalyzer-opt11-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 244 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p14
    cd scanalyzer-opt11-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 245 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p15
    cd scanalyzer-opt11-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 246 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p16
    cd scanalyzer-opt11-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 247 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p17
    cd scanalyzer-opt11-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 248 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p18
    cd scanalyzer-opt11-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 249 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p19
    cd scanalyzer-opt11-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 250 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-opt11-strips/p20
    cd scanalyzer-opt11-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-opt11-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 251 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p01
    cd transport-opt11-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 252 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p02
    cd transport-opt11-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 253 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p03
    cd transport-opt11-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 254 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p04
    cd transport-opt11-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 255 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p05
    cd transport-opt11-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 256 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p06
    cd transport-opt11-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 257 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p07
    cd transport-opt11-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 258 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p08
    cd transport-opt11-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 259 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p09
    cd transport-opt11-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 260 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p10
    cd transport-opt11-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 261 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p11
    cd transport-opt11-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 262 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p12
    cd transport-opt11-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 263 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p13
    cd transport-opt11-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 264 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p14
    cd transport-opt11-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 265 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p15
    cd transport-opt11-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 266 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p16
    cd transport-opt11-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 267 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p17
    cd transport-opt11-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 268 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p18
    cd transport-opt11-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 269 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p19
    cd transport-opt11-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 270 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-opt11-strips/p20
    cd transport-opt11-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-opt11-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 271 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p01
    cd woodworking-opt11-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 272 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p02
    cd woodworking-opt11-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 273 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p03
    cd woodworking-opt11-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 274 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p04
    cd woodworking-opt11-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 275 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p05
    cd woodworking-opt11-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 276 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p06
    cd woodworking-opt11-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 277 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p07
    cd woodworking-opt11-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 278 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p08
    cd woodworking-opt11-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 279 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p09
    cd woodworking-opt11-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 280 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p10
    cd woodworking-opt11-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 281 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p11
    cd woodworking-opt11-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 282 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p12
    cd woodworking-opt11-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 283 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p13
    cd woodworking-opt11-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 284 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p14
    cd woodworking-opt11-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 285 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p15
    cd woodworking-opt11-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 286 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p16
    cd woodworking-opt11-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 287 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p17
    cd woodworking-opt11-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 288 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p18
    cd woodworking-opt11-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 289 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p19
    cd woodworking-opt11-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 290 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-opt11-strips/p20
    cd woodworking-opt11-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-opt11-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 291 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p01
    cd elevators-sat08-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p01-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 292 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p02
    cd elevators-sat08-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p02-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 293 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p03
    cd elevators-sat08-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p03-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 294 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p04
    cd elevators-sat08-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p04-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 295 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p05
    cd elevators-sat08-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p05-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 296 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p06
    cd elevators-sat08-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p06-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 297 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p07
    cd elevators-sat08-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p07-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 298 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p08
    cd elevators-sat08-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p08-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 299 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p09
    cd elevators-sat08-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p09-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 300 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p10
    cd elevators-sat08-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p10-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 301 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p11
    cd elevators-sat08-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p11-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 302 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p12
    cd elevators-sat08-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p12-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 303 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p13
    cd elevators-sat08-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p13-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 304 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p14
    cd elevators-sat08-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p14-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 305 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p15
    cd elevators-sat08-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p15-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 306 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p16
    cd elevators-sat08-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p16-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 307 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p17
    cd elevators-sat08-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p17-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 308 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p18
    cd elevators-sat08-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p18-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 309 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p19
    cd elevators-sat08-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p19-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 310 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p20
    cd elevators-sat08-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p20-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 311 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p21
    cd elevators-sat08-strips/p21
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p21-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p21.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 312 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p22
    cd elevators-sat08-strips/p22
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p22-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p22.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 313 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p23
    cd elevators-sat08-strips/p23
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p23-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p23.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 314 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p24
    cd elevators-sat08-strips/p24
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p24-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p24.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 315 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p25
    cd elevators-sat08-strips/p25
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p25-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p25.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 316 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p26
    cd elevators-sat08-strips/p26
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p26-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p26.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 317 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p27
    cd elevators-sat08-strips/p27
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p27-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p27.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 318 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p28
    cd elevators-sat08-strips/p28
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p28-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p28.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 319 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p29
    cd elevators-sat08-strips/p29
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p29-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p29.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 320 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat08-strips/p30
    cd elevators-sat08-strips/p30
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p30-domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat08-strips/p30.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 321 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p01
    cd transport-sat08-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p01-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 322 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p02
    cd transport-sat08-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p02-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 323 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p03
    cd transport-sat08-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p03-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 324 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p04
    cd transport-sat08-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p04-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 325 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p05
    cd transport-sat08-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p05-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 326 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p06
    cd transport-sat08-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p06-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 327 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p07
    cd transport-sat08-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p07-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 328 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p08
    cd transport-sat08-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p08-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 329 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p09
    cd transport-sat08-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p09-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 330 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p10
    cd transport-sat08-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p10-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 331 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p11
    cd transport-sat08-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p11-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 332 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p12
    cd transport-sat08-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p12-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 333 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p13
    cd transport-sat08-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p13-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 334 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p14
    cd transport-sat08-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p14-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 335 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p15
    cd transport-sat08-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p15-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 336 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p16
    cd transport-sat08-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p16-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 337 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p17
    cd transport-sat08-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p17-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 338 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p18
    cd transport-sat08-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p18-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 339 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p19
    cd transport-sat08-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p19-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 340 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p20
    cd transport-sat08-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p20-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 341 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p21
    cd transport-sat08-strips/p21
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p21-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p21.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 342 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p22
    cd transport-sat08-strips/p22
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p22-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p22.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 343 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p23
    cd transport-sat08-strips/p23
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p23-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p23.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 344 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p24
    cd transport-sat08-strips/p24
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p24-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p24.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 345 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p25
    cd transport-sat08-strips/p25
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p25-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p25.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 346 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p26
    cd transport-sat08-strips/p26
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p26-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p26.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 347 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p27
    cd transport-sat08-strips/p27
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p27-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p27.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 348 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p28
    cd transport-sat08-strips/p28
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p28-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p28.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 349 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p29
    cd transport-sat08-strips/p29
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p29-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p29.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 350 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat08-strips/p30
    cd transport-sat08-strips/p30
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat08-strips/p30-domain.pddl /home/ifi/pommeren/benchmarks/transport-sat08-strips/p30.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 351 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p01
    cd woodworking-sat08-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p01-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 352 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p02
    cd woodworking-sat08-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p02-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 353 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p03
    cd woodworking-sat08-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p03-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 354 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p04
    cd woodworking-sat08-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p04-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 355 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p05
    cd woodworking-sat08-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p05-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 356 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p06
    cd woodworking-sat08-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p06-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 357 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p07
    cd woodworking-sat08-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p07-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 358 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p08
    cd woodworking-sat08-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p08-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 359 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p09
    cd woodworking-sat08-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p09-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 360 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p10
    cd woodworking-sat08-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p10-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 361 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p11
    cd woodworking-sat08-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p11-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 362 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p12
    cd woodworking-sat08-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p12-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 363 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p13
    cd woodworking-sat08-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p13-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 364 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p14
    cd woodworking-sat08-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p14-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 365 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p15
    cd woodworking-sat08-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p15-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 366 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p16
    cd woodworking-sat08-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p16-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 367 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p17
    cd woodworking-sat08-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p17-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 368 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p18
    cd woodworking-sat08-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p18-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 369 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p19
    cd woodworking-sat08-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p19-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 370 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p20
    cd woodworking-sat08-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p20-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 371 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p21
    cd woodworking-sat08-strips/p21
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p21-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p21.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 372 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p22
    cd woodworking-sat08-strips/p22
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p22-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p22.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 373 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p23
    cd woodworking-sat08-strips/p23
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p23-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p23.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 374 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p24
    cd woodworking-sat08-strips/p24
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p24-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p24.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 375 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p25
    cd woodworking-sat08-strips/p25
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p25-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p25.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 376 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p26
    cd woodworking-sat08-strips/p26
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p26-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p26.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 377 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p27
    cd woodworking-sat08-strips/p27
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p27-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p27.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 378 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p28
    cd woodworking-sat08-strips/p28
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p28-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p28.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 379 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p29
    cd woodworking-sat08-strips/p29
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p29-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p29.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 380 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat08-strips/p30
    cd woodworking-sat08-strips/p30
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p30-domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat08-strips/p30.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 381 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile06-021
    cd barman-sat11-strips/pfile06-021
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile06-021.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 382 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile06-022
    cd barman-sat11-strips/pfile06-022
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile06-022.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 383 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile06-023
    cd barman-sat11-strips/pfile06-023
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile06-023.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 384 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile06-024
    cd barman-sat11-strips/pfile06-024
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile06-024.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 385 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile07-025
    cd barman-sat11-strips/pfile07-025
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile07-025.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 386 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile07-026
    cd barman-sat11-strips/pfile07-026
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile07-026.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 387 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile07-027
    cd barman-sat11-strips/pfile07-027
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile07-027.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 388 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile07-028
    cd barman-sat11-strips/pfile07-028
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile07-028.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 389 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile08-029
    cd barman-sat11-strips/pfile08-029
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile08-029.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 390 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile08-030
    cd barman-sat11-strips/pfile08-030
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile08-030.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 391 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile08-031
    cd barman-sat11-strips/pfile08-031
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile08-031.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 392 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile08-032
    cd barman-sat11-strips/pfile08-032
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile08-032.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 393 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile09-033
    cd barman-sat11-strips/pfile09-033
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile09-033.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 394 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile09-034
    cd barman-sat11-strips/pfile09-034
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile09-034.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 395 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile09-035
    cd barman-sat11-strips/pfile09-035
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile09-035.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 396 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile09-036
    cd barman-sat11-strips/pfile09-036
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile09-036.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 397 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile10-037
    cd barman-sat11-strips/pfile10-037
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile10-037.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 398 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile10-038
    cd barman-sat11-strips/pfile10-038
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile10-038.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 399 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile10-039
    cd barman-sat11-strips/pfile10-039
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile10-039.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 400 -eq $SGE_TASK_ID ]; then
    
    mkdirhier barman-sat11-strips/pfile10-040
    cd barman-sat11-strips/pfile10-040
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/barman-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/barman-sat11-strips/pfile10-040.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 401 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p01
    cd elevators-sat11-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 402 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p02
    cd elevators-sat11-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 403 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p03
    cd elevators-sat11-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 404 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p04
    cd elevators-sat11-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 405 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p05
    cd elevators-sat11-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 406 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p06
    cd elevators-sat11-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 407 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p07
    cd elevators-sat11-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 408 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p08
    cd elevators-sat11-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 409 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p09
    cd elevators-sat11-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 410 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p10
    cd elevators-sat11-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 411 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p11
    cd elevators-sat11-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 412 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p12
    cd elevators-sat11-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 413 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p13
    cd elevators-sat11-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 414 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p14
    cd elevators-sat11-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 415 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p15
    cd elevators-sat11-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 416 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p16
    cd elevators-sat11-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 417 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p17
    cd elevators-sat11-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 418 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p18
    cd elevators-sat11-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 419 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p19
    cd elevators-sat11-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 420 -eq $SGE_TASK_ID ]; then
    
    mkdirhier elevators-sat11-strips/p20
    cd elevators-sat11-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/elevators-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/elevators-sat11-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 421 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p01-001
    cd floortile-sat11-strips/seq-p01-001
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p01-001.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 422 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p01-002
    cd floortile-sat11-strips/seq-p01-002
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p01-002.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 423 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p02-003
    cd floortile-sat11-strips/seq-p02-003
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p02-003.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 424 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p02-004
    cd floortile-sat11-strips/seq-p02-004
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p02-004.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 425 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p03-005
    cd floortile-sat11-strips/seq-p03-005
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p03-005.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 426 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p03-006
    cd floortile-sat11-strips/seq-p03-006
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p03-006.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 427 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p04-007
    cd floortile-sat11-strips/seq-p04-007
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p04-007.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 428 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p04-008
    cd floortile-sat11-strips/seq-p04-008
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p04-008.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 429 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p05-009
    cd floortile-sat11-strips/seq-p05-009
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p05-009.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 430 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p05-010
    cd floortile-sat11-strips/seq-p05-010
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p05-010.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 431 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p06-011
    cd floortile-sat11-strips/seq-p06-011
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p06-011.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 432 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p06-012
    cd floortile-sat11-strips/seq-p06-012
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p06-012.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 433 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p07-013
    cd floortile-sat11-strips/seq-p07-013
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p07-013.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 434 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p07-014
    cd floortile-sat11-strips/seq-p07-014
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p07-014.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 435 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p08-015
    cd floortile-sat11-strips/seq-p08-015
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p08-015.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 436 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p08-016
    cd floortile-sat11-strips/seq-p08-016
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p08-016.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 437 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p09-017
    cd floortile-sat11-strips/seq-p09-017
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p09-017.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 438 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p09-018
    cd floortile-sat11-strips/seq-p09-018
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p09-018.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 439 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p10-019
    cd floortile-sat11-strips/seq-p10-019
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p10-019.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 440 -eq $SGE_TASK_ID ]; then
    
    mkdirhier floortile-sat11-strips/seq-p10-020
    cd floortile-sat11-strips/seq-p10-020
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/floortile-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/floortile-sat11-strips/seq-p10-020.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 441 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p01
    cd parcprinter-sat11-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p01-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 442 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p02
    cd parcprinter-sat11-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p02-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 443 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p03
    cd parcprinter-sat11-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p03-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 444 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p04
    cd parcprinter-sat11-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p04-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 445 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p05
    cd parcprinter-sat11-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p05-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 446 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p06
    cd parcprinter-sat11-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p06-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 447 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p07
    cd parcprinter-sat11-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p07-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 448 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p08
    cd parcprinter-sat11-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p08-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 449 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p09
    cd parcprinter-sat11-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p09-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 450 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p10
    cd parcprinter-sat11-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p10-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 451 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p11
    cd parcprinter-sat11-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p11-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 452 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p12
    cd parcprinter-sat11-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p12-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 453 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p13
    cd parcprinter-sat11-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p13-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 454 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p14
    cd parcprinter-sat11-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p14-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 455 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p15
    cd parcprinter-sat11-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p15-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 456 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p16
    cd parcprinter-sat11-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p16-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 457 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p17
    cd parcprinter-sat11-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p17-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 458 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p18
    cd parcprinter-sat11-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p18-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 459 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p19
    cd parcprinter-sat11-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p19-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 460 -eq $SGE_TASK_ID ]; then
    
    mkdirhier parcprinter-sat11-strips/p20
    cd parcprinter-sat11-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p20-domain.pddl /home/ifi/pommeren/benchmarks/parcprinter-sat11-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 461 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p01
    cd scanalyzer-sat11-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 462 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p02
    cd scanalyzer-sat11-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 463 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p03
    cd scanalyzer-sat11-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 464 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p04
    cd scanalyzer-sat11-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 465 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p05
    cd scanalyzer-sat11-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 466 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p06
    cd scanalyzer-sat11-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 467 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p07
    cd scanalyzer-sat11-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 468 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p08
    cd scanalyzer-sat11-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 469 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p09
    cd scanalyzer-sat11-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 470 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p10
    cd scanalyzer-sat11-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 471 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p11
    cd scanalyzer-sat11-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 472 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p12
    cd scanalyzer-sat11-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 473 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p13
    cd scanalyzer-sat11-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 474 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p14
    cd scanalyzer-sat11-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 475 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p15
    cd scanalyzer-sat11-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 476 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p16
    cd scanalyzer-sat11-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 477 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p17
    cd scanalyzer-sat11-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 478 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p18
    cd scanalyzer-sat11-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 479 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p19
    cd scanalyzer-sat11-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 480 -eq $SGE_TASK_ID ]; then
    
    mkdirhier scanalyzer-sat11-strips/p20
    cd scanalyzer-sat11-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/scanalyzer-sat11-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 481 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p01
    cd transport-sat11-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 482 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p02
    cd transport-sat11-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 483 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p03
    cd transport-sat11-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 484 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p04
    cd transport-sat11-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 485 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p05
    cd transport-sat11-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 486 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p06
    cd transport-sat11-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 487 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p07
    cd transport-sat11-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 488 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p08
    cd transport-sat11-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 489 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p09
    cd transport-sat11-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 490 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p10
    cd transport-sat11-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 491 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p11
    cd transport-sat11-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 492 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p12
    cd transport-sat11-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 493 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p13
    cd transport-sat11-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 494 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p14
    cd transport-sat11-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 495 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p15
    cd transport-sat11-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 496 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p16
    cd transport-sat11-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 497 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p17
    cd transport-sat11-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 498 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p18
    cd transport-sat11-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 499 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p19
    cd transport-sat11-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 500 -eq $SGE_TASK_ID ]; then
    
    mkdirhier transport-sat11-strips/p20
    cd transport-sat11-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/transport-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/transport-sat11-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 501 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p01
    cd woodworking-sat11-strips/p01
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p01.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 502 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p02
    cd woodworking-sat11-strips/p02
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p02.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 503 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p03
    cd woodworking-sat11-strips/p03
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p03.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 504 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p04
    cd woodworking-sat11-strips/p04
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p04.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 505 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p05
    cd woodworking-sat11-strips/p05
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p05.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 506 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p06
    cd woodworking-sat11-strips/p06
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p06.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 507 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p07
    cd woodworking-sat11-strips/p07
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p07.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 508 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p08
    cd woodworking-sat11-strips/p08
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p08.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 509 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p09
    cd woodworking-sat11-strips/p09
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p09.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 510 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p10
    cd woodworking-sat11-strips/p10
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p10.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 511 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p11
    cd woodworking-sat11-strips/p11
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p11.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 512 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p12
    cd woodworking-sat11-strips/p12
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p12.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 513 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p13
    cd woodworking-sat11-strips/p13
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p13.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 514 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p14
    cd woodworking-sat11-strips/p14
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p14.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 515 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p15
    cd woodworking-sat11-strips/p15
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p15.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 516 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p16
    cd woodworking-sat11-strips/p16
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p16.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 517 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p17
    cd woodworking-sat11-strips/p17
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p17.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 518 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p18
    cd woodworking-sat11-strips/p18
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p18.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 519 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p19
    cd woodworking-sat11-strips/p19
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p19.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 520 -eq $SGE_TASK_ID ]; then
    
    mkdirhier woodworking-sat11-strips/p20
    cd woodworking-sat11-strips/p20
    /home/ifi/pommeren/downward/src/translate/translate-relaxed.py /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/domain.pddl /home/ifi/pommeren/benchmarks/woodworking-sat11-strips/p20.pddl
    /usr/bin/time --format "%U\n%S\n" /home/ifi/pommeren/downward/src/preprocess/preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
