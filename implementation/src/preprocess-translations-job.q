#! /bin/bash
#$ -S /bin/bash
#$ -m n
#$ -cwd
#$ -e log 
#$ -o log
#$ -l h_cpu=0:30:0
#$ -l h_vmem=2G
#$ -q opteron_core.q
#$ -t 1-835

if [ 1 -eq $SGE_TASK_ID ]; then
    cd airport/p01-airport1-p1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 2 -eq $SGE_TASK_ID ]; then
    cd airport/p02-airport1-p1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 3 -eq $SGE_TASK_ID ]; then
    cd airport/p03-airport1-p2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 4 -eq $SGE_TASK_ID ]; then
    cd airport/p04-airport2-p1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 5 -eq $SGE_TASK_ID ]; then
    cd airport/p05-airport2-p1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 6 -eq $SGE_TASK_ID ]; then
    cd airport/p06-airport2-p2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 7 -eq $SGE_TASK_ID ]; then
    cd airport/p07-airport2-p2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 8 -eq $SGE_TASK_ID ]; then
    cd airport/p08-airport2-p3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 9 -eq $SGE_TASK_ID ]; then
    cd airport/p09-airport2-p4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 10 -eq $SGE_TASK_ID ]; then
    cd airport/p10-airport3-p1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 11 -eq $SGE_TASK_ID ]; then
    cd airport/p11-airport3-p1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 12 -eq $SGE_TASK_ID ]; then
    cd airport/p12-airport3-p2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 13 -eq $SGE_TASK_ID ]; then
    cd airport/p13-airport3-p2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 14 -eq $SGE_TASK_ID ]; then
    cd airport/p14-airport3-p3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 15 -eq $SGE_TASK_ID ]; then
    cd airport/p15-airport3-p3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 16 -eq $SGE_TASK_ID ]; then
    cd airport/p16-airport3-p4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 17 -eq $SGE_TASK_ID ]; then
    cd airport/p17-airport3-p5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 18 -eq $SGE_TASK_ID ]; then
    cd airport/p18-airport3-p6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 19 -eq $SGE_TASK_ID ]; then
    cd airport/p19-airport3-p6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 20 -eq $SGE_TASK_ID ]; then
    cd airport/p20-airport3-p7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 21 -eq $SGE_TASK_ID ]; then
    cd airport/p21-airport4halfMUC-p2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 22 -eq $SGE_TASK_ID ]; then
    cd airport/p22-airport4halfMUC-p3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 23 -eq $SGE_TASK_ID ]; then
    cd airport/p23-airport4halfMUC-p4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 24 -eq $SGE_TASK_ID ]; then
    cd airport/p24-airport4halfMUC-p4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 25 -eq $SGE_TASK_ID ]; then
    cd airport/p25-airport4halfMUC-p5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 26 -eq $SGE_TASK_ID ]; then
    cd airport/p26-airport4halfMUC-p6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 27 -eq $SGE_TASK_ID ]; then
    cd airport/p27-airport4halfMUC-p6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 28 -eq $SGE_TASK_ID ]; then
    cd airport/p28-airport4halfMUC-p7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 29 -eq $SGE_TASK_ID ]; then
    cd airport/p29-airport4halfMUC-p8
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 30 -eq $SGE_TASK_ID ]; then
    cd airport/p30-airport4halfMUC-p8
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 31 -eq $SGE_TASK_ID ]; then
    cd airport/p31-airport4halfMUC-p9
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 32 -eq $SGE_TASK_ID ]; then
    cd airport/p32-airport4halfMUC-p10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 33 -eq $SGE_TASK_ID ]; then
    cd airport/p33-airport4halfMUC-p10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 34 -eq $SGE_TASK_ID ]; then
    cd airport/p34-airport4halfMUC-p11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 35 -eq $SGE_TASK_ID ]; then
    cd airport/p35-airport4halfMUC-p12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 36 -eq $SGE_TASK_ID ]; then
    cd airport/p36-airport5MUC-p2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 37 -eq $SGE_TASK_ID ]; then
    cd airport/p37-airport5MUC-p3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 38 -eq $SGE_TASK_ID ]; then
    cd airport/p38-airport5MUC-p3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 39 -eq $SGE_TASK_ID ]; then
    cd airport/p39-airport5MUC-p4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 40 -eq $SGE_TASK_ID ]; then
    cd airport/p40-airport5MUC-p4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 41 -eq $SGE_TASK_ID ]; then
    cd airport/p41-airport5MUC-p4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 42 -eq $SGE_TASK_ID ]; then
    cd airport/p42-airport5MUC-p5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 43 -eq $SGE_TASK_ID ]; then
    cd airport/p43-airport5MUC-p5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 44 -eq $SGE_TASK_ID ]; then
    cd airport/p44-airport5MUC-p5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 45 -eq $SGE_TASK_ID ]; then
    cd airport/p45-airport5MUC-p6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 46 -eq $SGE_TASK_ID ]; then
    cd airport/p46-airport5MUC-p6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 47 -eq $SGE_TASK_ID ]; then
    cd airport/p47-airport5MUC-p8
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 48 -eq $SGE_TASK_ID ]; then
    cd airport/p48-airport5MUC-p9
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 49 -eq $SGE_TASK_ID ]; then
    cd airport/p49-airport5MUC-p10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 50 -eq $SGE_TASK_ID ]; then
    cd airport/p50-airport5MUC-p15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 51 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-4-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 52 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-4-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 53 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-4-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 54 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-5-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 55 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-5-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 56 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-5-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 57 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-6-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 58 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-6-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 59 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-6-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 60 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-7-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 61 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-7-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 62 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-7-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 63 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-8-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 64 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-8-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 65 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-8-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 66 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-9-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 67 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-9-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 68 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-9-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 69 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-10-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 70 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-10-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 71 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-10-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 72 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-11-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 73 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-11-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 74 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-11-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 75 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-12-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 76 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-12-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 77 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-13-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 78 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-13-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 79 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-14-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 80 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-14-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 81 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-15-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 82 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-15-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 83 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-16-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 84 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-16-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 85 -eq $SGE_TASK_ID ]; then
    cd blocks/probBLOCKS-17-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 86 -eq $SGE_TASK_ID ]; then
    cd depot/pfile1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 87 -eq $SGE_TASK_ID ]; then
    cd depot/pfile2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 88 -eq $SGE_TASK_ID ]; then
    cd depot/pfile3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 89 -eq $SGE_TASK_ID ]; then
    cd depot/pfile4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 90 -eq $SGE_TASK_ID ]; then
    cd depot/pfile5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 91 -eq $SGE_TASK_ID ]; then
    cd depot/pfile6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 92 -eq $SGE_TASK_ID ]; then
    cd depot/pfile7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 93 -eq $SGE_TASK_ID ]; then
    cd depot/pfile8
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 94 -eq $SGE_TASK_ID ]; then
    cd depot/pfile9
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 95 -eq $SGE_TASK_ID ]; then
    cd depot/pfile10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 96 -eq $SGE_TASK_ID ]; then
    cd depot/pfile11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 97 -eq $SGE_TASK_ID ]; then
    cd depot/pfile12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 98 -eq $SGE_TASK_ID ]; then
    cd depot/pfile13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 99 -eq $SGE_TASK_ID ]; then
    cd depot/pfile14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 100 -eq $SGE_TASK_ID ]; then
    cd depot/pfile15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 101 -eq $SGE_TASK_ID ]; then
    cd depot/pfile16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 102 -eq $SGE_TASK_ID ]; then
    cd depot/pfile17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 103 -eq $SGE_TASK_ID ]; then
    cd depot/pfile18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 104 -eq $SGE_TASK_ID ]; then
    cd depot/pfile19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 105 -eq $SGE_TASK_ID ]; then
    cd depot/pfile20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 106 -eq $SGE_TASK_ID ]; then
    cd depot/pfile21
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 107 -eq $SGE_TASK_ID ]; then
    cd depot/pfile22
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 108 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 109 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 110 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 111 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 112 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 113 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 114 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 115 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile8
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 116 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile9
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 117 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 118 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 119 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 120 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 121 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 122 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 123 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 124 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 125 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 126 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 127 -eq $SGE_TASK_ID ]; then
    cd driverlog/pfile20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 128 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 129 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 130 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-2-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 131 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-2-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 132 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-2-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 133 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-2-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 134 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-2-5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 135 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 136 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-3-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 137 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-3-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 138 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-3-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 139 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-3-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 140 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-3-5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 141 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 142 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-4-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 143 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-4-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 144 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-4-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 145 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-4-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 146 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-4-5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 147 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 148 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-5-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 149 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-5-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 150 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-5-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 151 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-5-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 152 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-5-5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 153 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 154 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-6-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 155 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-6-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 156 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-6-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 157 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-6-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 158 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-6-5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 159 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 160 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-7-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 161 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-7-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 162 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-7-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 163 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-7-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 164 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-7-5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 165 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile8
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 166 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-8-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 167 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-8-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 168 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-8-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 169 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-8-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 170 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-8-5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 171 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile9
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 172 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-9-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 173 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-9-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 174 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-9-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 175 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-9-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 176 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-9-5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 177 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 178 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-10-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 179 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-10-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 180 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-10-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 181 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-10-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 182 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-10-5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 183 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 184 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-11-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 185 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-11-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 186 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-11-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 187 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-11-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 188 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-11-5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 189 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 190 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-12-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 191 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-12-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 192 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-12-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 193 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-12-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 194 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-12-5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 195 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 196 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-13-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 197 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-13-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 198 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-13-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 199 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-13-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 200 -eq $SGE_TASK_ID ]; then
    cd freecell/probfreecell-13-5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 201 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 202 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 203 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 204 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 205 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 206 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 207 -eq $SGE_TASK_ID ]; then
    cd freecell/pfile20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 208 -eq $SGE_TASK_ID ]; then
    cd gripper/prob01
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 209 -eq $SGE_TASK_ID ]; then
    cd gripper/prob02
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 210 -eq $SGE_TASK_ID ]; then
    cd gripper/prob03
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 211 -eq $SGE_TASK_ID ]; then
    cd gripper/prob04
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 212 -eq $SGE_TASK_ID ]; then
    cd gripper/prob05
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 213 -eq $SGE_TASK_ID ]; then
    cd gripper/prob06
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 214 -eq $SGE_TASK_ID ]; then
    cd gripper/prob07
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 215 -eq $SGE_TASK_ID ]; then
    cd gripper/prob08
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 216 -eq $SGE_TASK_ID ]; then
    cd gripper/prob09
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 217 -eq $SGE_TASK_ID ]; then
    cd gripper/prob10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 218 -eq $SGE_TASK_ID ]; then
    cd gripper/prob11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 219 -eq $SGE_TASK_ID ]; then
    cd gripper/prob12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 220 -eq $SGE_TASK_ID ]; then
    cd gripper/prob13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 221 -eq $SGE_TASK_ID ]; then
    cd gripper/prob14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 222 -eq $SGE_TASK_ID ]; then
    cd gripper/prob15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 223 -eq $SGE_TASK_ID ]; then
    cd gripper/prob16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 224 -eq $SGE_TASK_ID ]; then
    cd gripper/prob17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 225 -eq $SGE_TASK_ID ]; then
    cd gripper/prob18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 226 -eq $SGE_TASK_ID ]; then
    cd gripper/prob19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 227 -eq $SGE_TASK_ID ]; then
    cd gripper/prob20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 228 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-4-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 229 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-4-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 230 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-4-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 231 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-5-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 232 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-5-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 233 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-5-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 234 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-6-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 235 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-6-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 236 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-6-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 237 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-6-9
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 238 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-7-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 239 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-7-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 240 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-8-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 241 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-8-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 242 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-9-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 243 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-9-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 244 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-10-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 245 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-10-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 246 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-11-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 247 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-11-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 248 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-12-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 249 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-12-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 250 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-13-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 251 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-13-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 252 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-14-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 253 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-14-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 254 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-15-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 255 -eq $SGE_TASK_ID ]; then
    cd logistics00/probLOGISTICS-15-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 256 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob01
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 257 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob02
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 258 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob03
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 259 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob04
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 260 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob05
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 261 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob06
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 262 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob07
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 263 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob08
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 264 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob09
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 265 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 266 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 267 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 268 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 269 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 270 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 271 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 272 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 273 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 274 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 275 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 276 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob21
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 277 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob22
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 278 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob23
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 279 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob24
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 280 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob25
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 281 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob26
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 282 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob27
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 283 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob28
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 284 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob29
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 285 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 286 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob31
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 287 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob32
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 288 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob33
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 289 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob34
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 290 -eq $SGE_TASK_ID ]; then
    cd logistics98/prob35
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 291 -eq $SGE_TASK_ID ]; then
    cd miconic/s1-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 292 -eq $SGE_TASK_ID ]; then
    cd miconic/s1-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 293 -eq $SGE_TASK_ID ]; then
    cd miconic/s1-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 294 -eq $SGE_TASK_ID ]; then
    cd miconic/s1-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 295 -eq $SGE_TASK_ID ]; then
    cd miconic/s1-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 296 -eq $SGE_TASK_ID ]; then
    cd miconic/s2-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 297 -eq $SGE_TASK_ID ]; then
    cd miconic/s2-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 298 -eq $SGE_TASK_ID ]; then
    cd miconic/s2-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 299 -eq $SGE_TASK_ID ]; then
    cd miconic/s2-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 300 -eq $SGE_TASK_ID ]; then
    cd miconic/s2-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 301 -eq $SGE_TASK_ID ]; then
    cd miconic/s3-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 302 -eq $SGE_TASK_ID ]; then
    cd miconic/s3-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 303 -eq $SGE_TASK_ID ]; then
    cd miconic/s3-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 304 -eq $SGE_TASK_ID ]; then
    cd miconic/s3-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 305 -eq $SGE_TASK_ID ]; then
    cd miconic/s3-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 306 -eq $SGE_TASK_ID ]; then
    cd miconic/s4-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 307 -eq $SGE_TASK_ID ]; then
    cd miconic/s4-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 308 -eq $SGE_TASK_ID ]; then
    cd miconic/s4-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 309 -eq $SGE_TASK_ID ]; then
    cd miconic/s4-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 310 -eq $SGE_TASK_ID ]; then
    cd miconic/s4-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 311 -eq $SGE_TASK_ID ]; then
    cd miconic/s5-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 312 -eq $SGE_TASK_ID ]; then
    cd miconic/s5-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 313 -eq $SGE_TASK_ID ]; then
    cd miconic/s5-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 314 -eq $SGE_TASK_ID ]; then
    cd miconic/s5-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 315 -eq $SGE_TASK_ID ]; then
    cd miconic/s5-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 316 -eq $SGE_TASK_ID ]; then
    cd miconic/s6-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 317 -eq $SGE_TASK_ID ]; then
    cd miconic/s6-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 318 -eq $SGE_TASK_ID ]; then
    cd miconic/s6-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 319 -eq $SGE_TASK_ID ]; then
    cd miconic/s6-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 320 -eq $SGE_TASK_ID ]; then
    cd miconic/s6-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 321 -eq $SGE_TASK_ID ]; then
    cd miconic/s7-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 322 -eq $SGE_TASK_ID ]; then
    cd miconic/s7-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 323 -eq $SGE_TASK_ID ]; then
    cd miconic/s7-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 324 -eq $SGE_TASK_ID ]; then
    cd miconic/s7-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 325 -eq $SGE_TASK_ID ]; then
    cd miconic/s7-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 326 -eq $SGE_TASK_ID ]; then
    cd miconic/s8-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 327 -eq $SGE_TASK_ID ]; then
    cd miconic/s8-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 328 -eq $SGE_TASK_ID ]; then
    cd miconic/s8-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 329 -eq $SGE_TASK_ID ]; then
    cd miconic/s8-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 330 -eq $SGE_TASK_ID ]; then
    cd miconic/s8-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 331 -eq $SGE_TASK_ID ]; then
    cd miconic/s9-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 332 -eq $SGE_TASK_ID ]; then
    cd miconic/s9-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 333 -eq $SGE_TASK_ID ]; then
    cd miconic/s9-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 334 -eq $SGE_TASK_ID ]; then
    cd miconic/s9-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 335 -eq $SGE_TASK_ID ]; then
    cd miconic/s9-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 336 -eq $SGE_TASK_ID ]; then
    cd miconic/s10-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 337 -eq $SGE_TASK_ID ]; then
    cd miconic/s10-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 338 -eq $SGE_TASK_ID ]; then
    cd miconic/s10-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 339 -eq $SGE_TASK_ID ]; then
    cd miconic/s10-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 340 -eq $SGE_TASK_ID ]; then
    cd miconic/s10-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 341 -eq $SGE_TASK_ID ]; then
    cd miconic/s11-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 342 -eq $SGE_TASK_ID ]; then
    cd miconic/s11-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 343 -eq $SGE_TASK_ID ]; then
    cd miconic/s11-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 344 -eq $SGE_TASK_ID ]; then
    cd miconic/s11-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 345 -eq $SGE_TASK_ID ]; then
    cd miconic/s11-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 346 -eq $SGE_TASK_ID ]; then
    cd miconic/s12-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 347 -eq $SGE_TASK_ID ]; then
    cd miconic/s12-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 348 -eq $SGE_TASK_ID ]; then
    cd miconic/s12-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 349 -eq $SGE_TASK_ID ]; then
    cd miconic/s12-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 350 -eq $SGE_TASK_ID ]; then
    cd miconic/s12-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 351 -eq $SGE_TASK_ID ]; then
    cd miconic/s13-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 352 -eq $SGE_TASK_ID ]; then
    cd miconic/s13-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 353 -eq $SGE_TASK_ID ]; then
    cd miconic/s13-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 354 -eq $SGE_TASK_ID ]; then
    cd miconic/s13-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 355 -eq $SGE_TASK_ID ]; then
    cd miconic/s13-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 356 -eq $SGE_TASK_ID ]; then
    cd miconic/s14-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 357 -eq $SGE_TASK_ID ]; then
    cd miconic/s14-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 358 -eq $SGE_TASK_ID ]; then
    cd miconic/s14-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 359 -eq $SGE_TASK_ID ]; then
    cd miconic/s14-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 360 -eq $SGE_TASK_ID ]; then
    cd miconic/s14-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 361 -eq $SGE_TASK_ID ]; then
    cd miconic/s15-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 362 -eq $SGE_TASK_ID ]; then
    cd miconic/s15-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 363 -eq $SGE_TASK_ID ]; then
    cd miconic/s15-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 364 -eq $SGE_TASK_ID ]; then
    cd miconic/s15-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 365 -eq $SGE_TASK_ID ]; then
    cd miconic/s15-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 366 -eq $SGE_TASK_ID ]; then
    cd miconic/s16-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 367 -eq $SGE_TASK_ID ]; then
    cd miconic/s16-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 368 -eq $SGE_TASK_ID ]; then
    cd miconic/s16-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 369 -eq $SGE_TASK_ID ]; then
    cd miconic/s16-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 370 -eq $SGE_TASK_ID ]; then
    cd miconic/s16-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 371 -eq $SGE_TASK_ID ]; then
    cd miconic/s17-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 372 -eq $SGE_TASK_ID ]; then
    cd miconic/s17-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 373 -eq $SGE_TASK_ID ]; then
    cd miconic/s17-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 374 -eq $SGE_TASK_ID ]; then
    cd miconic/s17-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 375 -eq $SGE_TASK_ID ]; then
    cd miconic/s17-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 376 -eq $SGE_TASK_ID ]; then
    cd miconic/s18-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 377 -eq $SGE_TASK_ID ]; then
    cd miconic/s18-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 378 -eq $SGE_TASK_ID ]; then
    cd miconic/s18-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 379 -eq $SGE_TASK_ID ]; then
    cd miconic/s18-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 380 -eq $SGE_TASK_ID ]; then
    cd miconic/s18-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 381 -eq $SGE_TASK_ID ]; then
    cd miconic/s19-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 382 -eq $SGE_TASK_ID ]; then
    cd miconic/s19-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 383 -eq $SGE_TASK_ID ]; then
    cd miconic/s19-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 384 -eq $SGE_TASK_ID ]; then
    cd miconic/s19-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 385 -eq $SGE_TASK_ID ]; then
    cd miconic/s19-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 386 -eq $SGE_TASK_ID ]; then
    cd miconic/s20-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 387 -eq $SGE_TASK_ID ]; then
    cd miconic/s20-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 388 -eq $SGE_TASK_ID ]; then
    cd miconic/s20-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 389 -eq $SGE_TASK_ID ]; then
    cd miconic/s20-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 390 -eq $SGE_TASK_ID ]; then
    cd miconic/s20-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 391 -eq $SGE_TASK_ID ]; then
    cd miconic/s21-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 392 -eq $SGE_TASK_ID ]; then
    cd miconic/s21-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 393 -eq $SGE_TASK_ID ]; then
    cd miconic/s21-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 394 -eq $SGE_TASK_ID ]; then
    cd miconic/s21-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 395 -eq $SGE_TASK_ID ]; then
    cd miconic/s21-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 396 -eq $SGE_TASK_ID ]; then
    cd miconic/s22-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 397 -eq $SGE_TASK_ID ]; then
    cd miconic/s22-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 398 -eq $SGE_TASK_ID ]; then
    cd miconic/s22-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 399 -eq $SGE_TASK_ID ]; then
    cd miconic/s22-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 400 -eq $SGE_TASK_ID ]; then
    cd miconic/s22-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 401 -eq $SGE_TASK_ID ]; then
    cd miconic/s23-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 402 -eq $SGE_TASK_ID ]; then
    cd miconic/s23-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 403 -eq $SGE_TASK_ID ]; then
    cd miconic/s23-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 404 -eq $SGE_TASK_ID ]; then
    cd miconic/s23-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 405 -eq $SGE_TASK_ID ]; then
    cd miconic/s23-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 406 -eq $SGE_TASK_ID ]; then
    cd miconic/s24-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 407 -eq $SGE_TASK_ID ]; then
    cd miconic/s24-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 408 -eq $SGE_TASK_ID ]; then
    cd miconic/s24-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 409 -eq $SGE_TASK_ID ]; then
    cd miconic/s24-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 410 -eq $SGE_TASK_ID ]; then
    cd miconic/s24-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 411 -eq $SGE_TASK_ID ]; then
    cd miconic/s25-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 412 -eq $SGE_TASK_ID ]; then
    cd miconic/s25-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 413 -eq $SGE_TASK_ID ]; then
    cd miconic/s25-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 414 -eq $SGE_TASK_ID ]; then
    cd miconic/s25-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 415 -eq $SGE_TASK_ID ]; then
    cd miconic/s25-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 416 -eq $SGE_TASK_ID ]; then
    cd miconic/s26-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 417 -eq $SGE_TASK_ID ]; then
    cd miconic/s26-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 418 -eq $SGE_TASK_ID ]; then
    cd miconic/s26-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 419 -eq $SGE_TASK_ID ]; then
    cd miconic/s26-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 420 -eq $SGE_TASK_ID ]; then
    cd miconic/s26-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 421 -eq $SGE_TASK_ID ]; then
    cd miconic/s27-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 422 -eq $SGE_TASK_ID ]; then
    cd miconic/s27-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 423 -eq $SGE_TASK_ID ]; then
    cd miconic/s27-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 424 -eq $SGE_TASK_ID ]; then
    cd miconic/s27-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 425 -eq $SGE_TASK_ID ]; then
    cd miconic/s27-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 426 -eq $SGE_TASK_ID ]; then
    cd miconic/s28-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 427 -eq $SGE_TASK_ID ]; then
    cd miconic/s28-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 428 -eq $SGE_TASK_ID ]; then
    cd miconic/s28-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 429 -eq $SGE_TASK_ID ]; then
    cd miconic/s28-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 430 -eq $SGE_TASK_ID ]; then
    cd miconic/s28-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 431 -eq $SGE_TASK_ID ]; then
    cd miconic/s29-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 432 -eq $SGE_TASK_ID ]; then
    cd miconic/s29-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 433 -eq $SGE_TASK_ID ]; then
    cd miconic/s29-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 434 -eq $SGE_TASK_ID ]; then
    cd miconic/s29-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 435 -eq $SGE_TASK_ID ]; then
    cd miconic/s29-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 436 -eq $SGE_TASK_ID ]; then
    cd miconic/s30-0
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 437 -eq $SGE_TASK_ID ]; then
    cd miconic/s30-1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 438 -eq $SGE_TASK_ID ]; then
    cd miconic/s30-2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 439 -eq $SGE_TASK_ID ]; then
    cd miconic/s30-3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 440 -eq $SGE_TASK_ID ]; then
    cd miconic/s30-4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 441 -eq $SGE_TASK_ID ]; then
    cd mprime/prob01
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 442 -eq $SGE_TASK_ID ]; then
    cd mprime/prob02
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 443 -eq $SGE_TASK_ID ]; then
    cd mprime/prob03
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 444 -eq $SGE_TASK_ID ]; then
    cd mprime/prob04
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 445 -eq $SGE_TASK_ID ]; then
    cd mprime/prob05
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 446 -eq $SGE_TASK_ID ]; then
    cd mprime/prob06
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 447 -eq $SGE_TASK_ID ]; then
    cd mprime/prob07
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 448 -eq $SGE_TASK_ID ]; then
    cd mprime/prob08
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 449 -eq $SGE_TASK_ID ]; then
    cd mprime/prob09
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 450 -eq $SGE_TASK_ID ]; then
    cd mprime/prob10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 451 -eq $SGE_TASK_ID ]; then
    cd mprime/prob11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 452 -eq $SGE_TASK_ID ]; then
    cd mprime/prob12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 453 -eq $SGE_TASK_ID ]; then
    cd mprime/prob13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 454 -eq $SGE_TASK_ID ]; then
    cd mprime/prob14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 455 -eq $SGE_TASK_ID ]; then
    cd mprime/prob15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 456 -eq $SGE_TASK_ID ]; then
    cd mprime/prob16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 457 -eq $SGE_TASK_ID ]; then
    cd mprime/prob17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 458 -eq $SGE_TASK_ID ]; then
    cd mprime/prob18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 459 -eq $SGE_TASK_ID ]; then
    cd mprime/prob19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 460 -eq $SGE_TASK_ID ]; then
    cd mprime/prob20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 461 -eq $SGE_TASK_ID ]; then
    cd mprime/prob21
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 462 -eq $SGE_TASK_ID ]; then
    cd mprime/prob22
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 463 -eq $SGE_TASK_ID ]; then
    cd mprime/prob23
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 464 -eq $SGE_TASK_ID ]; then
    cd mprime/prob24
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 465 -eq $SGE_TASK_ID ]; then
    cd mprime/prob25
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 466 -eq $SGE_TASK_ID ]; then
    cd mprime/prob26
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 467 -eq $SGE_TASK_ID ]; then
    cd mprime/prob27
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 468 -eq $SGE_TASK_ID ]; then
    cd mprime/prob28
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 469 -eq $SGE_TASK_ID ]; then
    cd mprime/prob29
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 470 -eq $SGE_TASK_ID ]; then
    cd mprime/prob30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 471 -eq $SGE_TASK_ID ]; then
    cd mprime/prob31
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 472 -eq $SGE_TASK_ID ]; then
    cd mprime/prob32
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 473 -eq $SGE_TASK_ID ]; then
    cd mprime/prob33
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 474 -eq $SGE_TASK_ID ]; then
    cd mprime/prob34
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 475 -eq $SGE_TASK_ID ]; then
    cd mprime/prob35
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 476 -eq $SGE_TASK_ID ]; then
    cd mystery/prob01
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 477 -eq $SGE_TASK_ID ]; then
    cd mystery/prob02
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 478 -eq $SGE_TASK_ID ]; then
    cd mystery/prob03
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 479 -eq $SGE_TASK_ID ]; then
    cd mystery/prob04
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 480 -eq $SGE_TASK_ID ]; then
    cd mystery/prob05
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 481 -eq $SGE_TASK_ID ]; then
    cd mystery/prob06
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 482 -eq $SGE_TASK_ID ]; then
    cd mystery/prob07
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 483 -eq $SGE_TASK_ID ]; then
    cd mystery/prob08
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 484 -eq $SGE_TASK_ID ]; then
    cd mystery/prob09
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 485 -eq $SGE_TASK_ID ]; then
    cd mystery/prob10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 486 -eq $SGE_TASK_ID ]; then
    cd mystery/prob11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 487 -eq $SGE_TASK_ID ]; then
    cd mystery/prob12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 488 -eq $SGE_TASK_ID ]; then
    cd mystery/prob13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 489 -eq $SGE_TASK_ID ]; then
    cd mystery/prob14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 490 -eq $SGE_TASK_ID ]; then
    cd mystery/prob15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 491 -eq $SGE_TASK_ID ]; then
    cd mystery/prob16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 492 -eq $SGE_TASK_ID ]; then
    cd mystery/prob17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 493 -eq $SGE_TASK_ID ]; then
    cd mystery/prob18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 494 -eq $SGE_TASK_ID ]; then
    cd mystery/prob19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 495 -eq $SGE_TASK_ID ]; then
    cd mystery/prob20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 496 -eq $SGE_TASK_ID ]; then
    cd mystery/prob21
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 497 -eq $SGE_TASK_ID ]; then
    cd mystery/prob22
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 498 -eq $SGE_TASK_ID ]; then
    cd mystery/prob23
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 499 -eq $SGE_TASK_ID ]; then
    cd mystery/prob24
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 500 -eq $SGE_TASK_ID ]; then
    cd mystery/prob25
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 501 -eq $SGE_TASK_ID ]; then
    cd mystery/prob26
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 502 -eq $SGE_TASK_ID ]; then
    cd mystery/prob27
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 503 -eq $SGE_TASK_ID ]; then
    cd mystery/prob28
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 504 -eq $SGE_TASK_ID ]; then
    cd mystery/prob29
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 505 -eq $SGE_TASK_ID ]; then
    cd mystery/prob30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 506 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 507 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 508 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 509 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 510 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 511 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 512 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 513 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 514 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 515 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 516 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 517 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 518 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 519 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 520 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 521 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 522 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 523 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 524 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 525 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 526 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p21
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 527 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p22
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 528 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p23
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 529 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p24
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 530 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p25
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 531 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p26
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 532 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p27
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 533 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p28
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 534 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p29
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 535 -eq $SGE_TASK_ID ]; then
    cd openstacks-strips/p30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 536 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p01
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 537 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p02
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 538 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p03
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 539 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p04
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 540 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p05
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 541 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p06
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 542 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p07
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 543 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p08
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 544 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p09
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 545 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 546 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 547 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 548 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 549 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 550 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 551 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 552 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 553 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 554 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 555 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 556 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p21
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 557 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p22
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 558 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p23
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 559 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p24
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 560 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p25
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 561 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p26
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 562 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p27
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 563 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p28
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 564 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p29
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 565 -eq $SGE_TASK_ID ]; then
    cd pathways-noneg/p30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 566 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p01-net1-b6-g2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 567 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p02-net1-b6-g4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 568 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p03-net1-b8-g3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 569 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p04-net1-b8-g5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 570 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p05-net1-b10-g4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 571 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p06-net1-b10-g6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 572 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p07-net1-b12-g5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 573 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p08-net1-b12-g7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 574 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p09-net1-b14-g6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 575 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p10-net1-b14-g8
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 576 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p11-net2-b10-g2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 577 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p12-net2-b10-g4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 578 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p13-net2-b12-g3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 579 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p14-net2-b12-g5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 580 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p15-net2-b14-g4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 581 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p16-net2-b14-g6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 582 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p17-net2-b16-g5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 583 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p18-net2-b16-g7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 584 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p19-net2-b18-g6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 585 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p20-net2-b18-g8
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 586 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p21-net3-b12-g2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 587 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p22-net3-b12-g4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 588 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p23-net3-b14-g3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 589 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p24-net3-b14-g5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 590 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p25-net3-b16-g5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 591 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p26-net3-b16-g7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 592 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p27-net3-b18-g6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 593 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p28-net3-b18-g7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 594 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p29-net3-b20-g6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 595 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p30-net3-b20-g8
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 596 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p31-net4-b14-g3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 597 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p32-net4-b14-g5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 598 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p33-net4-b16-g5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 599 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p34-net4-b16-g6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 600 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p35-net4-b18-g4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 601 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p36-net4-b18-g6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 602 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p37-net4-b20-g5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 603 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p38-net4-b20-g7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 604 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p39-net4-b22-g7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 605 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p40-net4-b22-g8
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 606 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p41-net5-b22-g2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 607 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p42-net5-b22-g4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 608 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p43-net5-b24-g3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 609 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p44-net5-b24-g5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 610 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p45-net5-b26-g4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 611 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p46-net5-b26-g6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 612 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p47-net5-b28-g5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 613 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p48-net5-b28-g7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 614 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p49-net5-b30-g6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 615 -eq $SGE_TASK_ID ]; then
    cd pipesworld-notankage/p50-net5-b30-g8
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 616 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p01-net1-b6-g2-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 617 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p02-net1-b6-g4-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 618 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p03-net1-b8-g3-t80
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 619 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p04-net1-b8-g5-t80
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 620 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p05-net1-b10-g4-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 621 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p06-net1-b10-g6-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 622 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p07-net1-b12-g5-t80
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 623 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p08-net1-b12-g7-t80
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 624 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p09-net1-b14-g6-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 625 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p10-net1-b14-g8-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 626 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p11-net2-b10-g2-t30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 627 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p12-net2-b10-g4-t60
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 628 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p13-net2-b12-g3-t70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 629 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p14-net2-b12-g5-t30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 630 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p15-net2-b14-g4-t30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 631 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p16-net2-b14-g6-t80
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 632 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p17-net2-b16-g5-t20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 633 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p18-net2-b16-g7-t60
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 634 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p19-net2-b18-g6-t60
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 635 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p20-net2-b18-g8-t90
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 636 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p21-net3-b12-g2-t60
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 637 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p22-net3-b12-g4-t60
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 638 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p23-net3-b14-g3-t60
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 639 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p24-net3-b14-g5-t60
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 640 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p25-net3-b16-g5-t60
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 641 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p26-net3-b16-g7-t70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 642 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p27-net3-b18-g6-t70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 643 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p28-net3-b18-g7-t70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 644 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p29-net3-b20-g6-t70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 645 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p30-net3-b20-g8-t70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 646 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p31-net4-b14-g3-t20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 647 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p32-net4-b14-g5-t30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 648 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p33-net4-b16-g5-t60
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 649 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p34-net4-b16-g6-t60
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 650 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p35-net4-b18-g4-t90
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 651 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p36-net4-b18-g6-t90
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 652 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p37-net4-b20-g5-t60
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 653 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p38-net4-b20-g7-t60
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 654 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p39-net4-b22-g7-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 655 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p40-net4-b22-g8-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 656 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p41-net5-b22-g2-t20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 657 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p42-net5-b22-g4-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 658 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p43-net5-b24-g3-t80
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 659 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p44-net5-b24-g5-t80
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 660 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p45-net5-b26-g4-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 661 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p46-net5-b26-g6-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 662 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p47-net5-b28-g5-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 663 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p48-net5-b28-g7-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 664 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p49-net5-b30-g6-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 665 -eq $SGE_TASK_ID ]; then
    cd pipesworld-tankage/p50-net5-b30-g8-t50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 666 -eq $SGE_TASK_ID ]; then
    cd psr-small/p01-s2-n1-l2-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 667 -eq $SGE_TASK_ID ]; then
    cd psr-small/p02-s5-n1-l3-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 668 -eq $SGE_TASK_ID ]; then
    cd psr-small/p03-s7-n1-l3-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 669 -eq $SGE_TASK_ID ]; then
    cd psr-small/p04-s8-n1-l4-f10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 670 -eq $SGE_TASK_ID ]; then
    cd psr-small/p05-s9-n1-l4-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 671 -eq $SGE_TASK_ID ]; then
    cd psr-small/p06-s10-n1-l4-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 672 -eq $SGE_TASK_ID ]; then
    cd psr-small/p07-s11-n1-l4-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 673 -eq $SGE_TASK_ID ]; then
    cd psr-small/p08-s12-n1-l5-f10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 674 -eq $SGE_TASK_ID ]; then
    cd psr-small/p09-s13-n1-l5-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 675 -eq $SGE_TASK_ID ]; then
    cd psr-small/p10-s17-n2-l2-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 676 -eq $SGE_TASK_ID ]; then
    cd psr-small/p11-s18-n2-l2-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 677 -eq $SGE_TASK_ID ]; then
    cd psr-small/p12-s21-n2-l3-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 678 -eq $SGE_TASK_ID ]; then
    cd psr-small/p13-s22-n2-l3-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 679 -eq $SGE_TASK_ID ]; then
    cd psr-small/p14-s23-n2-l3-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 680 -eq $SGE_TASK_ID ]; then
    cd psr-small/p15-s24-n2-l4-f10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 681 -eq $SGE_TASK_ID ]; then
    cd psr-small/p16-s29-n2-l5-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 682 -eq $SGE_TASK_ID ]; then
    cd psr-small/p17-s30-n2-l5-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 683 -eq $SGE_TASK_ID ]; then
    cd psr-small/p18-s31-n2-l5-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 684 -eq $SGE_TASK_ID ]; then
    cd psr-small/p19-s33-n3-l2-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 685 -eq $SGE_TASK_ID ]; then
    cd psr-small/p20-s34-n3-l2-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 686 -eq $SGE_TASK_ID ]; then
    cd psr-small/p21-s35-n3-l2-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 687 -eq $SGE_TASK_ID ]; then
    cd psr-small/p22-s37-n3-l3-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 688 -eq $SGE_TASK_ID ]; then
    cd psr-small/p23-s38-n3-l3-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 689 -eq $SGE_TASK_ID ]; then
    cd psr-small/p24-s39-n3-l3-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 690 -eq $SGE_TASK_ID ]; then
    cd psr-small/p25-s40-n3-l4-f10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 691 -eq $SGE_TASK_ID ]; then
    cd psr-small/p26-s41-n3-l4-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 692 -eq $SGE_TASK_ID ]; then
    cd psr-small/p27-s42-n3-l4-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 693 -eq $SGE_TASK_ID ]; then
    cd psr-small/p28-s43-n3-l4-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 694 -eq $SGE_TASK_ID ]; then
    cd psr-small/p29-s45-n3-l5-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 695 -eq $SGE_TASK_ID ]; then
    cd psr-small/p30-s46-n3-l5-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 696 -eq $SGE_TASK_ID ]; then
    cd psr-small/p31-s49-n4-l2-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 697 -eq $SGE_TASK_ID ]; then
    cd psr-small/p32-s50-n4-l2-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 698 -eq $SGE_TASK_ID ]; then
    cd psr-small/p33-s51-n4-l2-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 699 -eq $SGE_TASK_ID ]; then
    cd psr-small/p34-s55-n4-l3-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 700 -eq $SGE_TASK_ID ]; then
    cd psr-small/p35-s57-n5-l2-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 701 -eq $SGE_TASK_ID ]; then
    cd psr-small/p36-s65-n6-l2-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 702 -eq $SGE_TASK_ID ]; then
    cd psr-small/p37-s67-n6-l2-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 703 -eq $SGE_TASK_ID ]; then
    cd psr-small/p38-s78-n3-l3-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 704 -eq $SGE_TASK_ID ]; then
    cd psr-small/p39-s79-n3-l3-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 705 -eq $SGE_TASK_ID ]; then
    cd psr-small/p40-s80-n3-l4-f10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 706 -eq $SGE_TASK_ID ]; then
    cd psr-small/p41-s81-n3-l4-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 707 -eq $SGE_TASK_ID ]; then
    cd psr-small/p42-s82-n3-l4-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 708 -eq $SGE_TASK_ID ]; then
    cd psr-small/p43-s83-n3-l4-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 709 -eq $SGE_TASK_ID ]; then
    cd psr-small/p44-s89-n4-l2-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 710 -eq $SGE_TASK_ID ]; then
    cd psr-small/p45-s94-n4-l3-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 711 -eq $SGE_TASK_ID ]; then
    cd psr-small/p46-s97-n5-l2-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 712 -eq $SGE_TASK_ID ]; then
    cd psr-small/p47-s98-n5-l2-f50
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 713 -eq $SGE_TASK_ID ]; then
    cd psr-small/p48-s101-n5-l3-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 714 -eq $SGE_TASK_ID ]; then
    cd psr-small/p49-s105-n6-l2-f30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 715 -eq $SGE_TASK_ID ]; then
    cd psr-small/p50-s107-n6-l2-f70
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 716 -eq $SGE_TASK_ID ]; then
    cd rovers/p01
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 717 -eq $SGE_TASK_ID ]; then
    cd rovers/p02
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 718 -eq $SGE_TASK_ID ]; then
    cd rovers/p03
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 719 -eq $SGE_TASK_ID ]; then
    cd rovers/p04
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 720 -eq $SGE_TASK_ID ]; then
    cd rovers/p05
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 721 -eq $SGE_TASK_ID ]; then
    cd rovers/p06
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 722 -eq $SGE_TASK_ID ]; then
    cd rovers/p07
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 723 -eq $SGE_TASK_ID ]; then
    cd rovers/p08
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 724 -eq $SGE_TASK_ID ]; then
    cd rovers/p09
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 725 -eq $SGE_TASK_ID ]; then
    cd rovers/p10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 726 -eq $SGE_TASK_ID ]; then
    cd rovers/p11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 727 -eq $SGE_TASK_ID ]; then
    cd rovers/p12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 728 -eq $SGE_TASK_ID ]; then
    cd rovers/p13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 729 -eq $SGE_TASK_ID ]; then
    cd rovers/p14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 730 -eq $SGE_TASK_ID ]; then
    cd rovers/p15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 731 -eq $SGE_TASK_ID ]; then
    cd rovers/p16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 732 -eq $SGE_TASK_ID ]; then
    cd rovers/p17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 733 -eq $SGE_TASK_ID ]; then
    cd rovers/p18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 734 -eq $SGE_TASK_ID ]; then
    cd rovers/p19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 735 -eq $SGE_TASK_ID ]; then
    cd rovers/p20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 736 -eq $SGE_TASK_ID ]; then
    cd rovers/p21
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 737 -eq $SGE_TASK_ID ]; then
    cd rovers/p22
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 738 -eq $SGE_TASK_ID ]; then
    cd rovers/p23
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 739 -eq $SGE_TASK_ID ]; then
    cd rovers/p24
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 740 -eq $SGE_TASK_ID ]; then
    cd rovers/p25
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 741 -eq $SGE_TASK_ID ]; then
    cd rovers/p26
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 742 -eq $SGE_TASK_ID ]; then
    cd rovers/p27
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 743 -eq $SGE_TASK_ID ]; then
    cd rovers/p28
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 744 -eq $SGE_TASK_ID ]; then
    cd rovers/p29
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 745 -eq $SGE_TASK_ID ]; then
    cd rovers/p30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 746 -eq $SGE_TASK_ID ]; then
    cd rovers/p31
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 747 -eq $SGE_TASK_ID ]; then
    cd rovers/p32
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 748 -eq $SGE_TASK_ID ]; then
    cd rovers/p33
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 749 -eq $SGE_TASK_ID ]; then
    cd rovers/p34
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 750 -eq $SGE_TASK_ID ]; then
    cd rovers/p35
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 751 -eq $SGE_TASK_ID ]; then
    cd rovers/p36
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 752 -eq $SGE_TASK_ID ]; then
    cd rovers/p37
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 753 -eq $SGE_TASK_ID ]; then
    cd rovers/p38
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 754 -eq $SGE_TASK_ID ]; then
    cd rovers/p39
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 755 -eq $SGE_TASK_ID ]; then
    cd rovers/p40
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 756 -eq $SGE_TASK_ID ]; then
    cd tpp/p01
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 757 -eq $SGE_TASK_ID ]; then
    cd tpp/p02
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 758 -eq $SGE_TASK_ID ]; then
    cd tpp/p03
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 759 -eq $SGE_TASK_ID ]; then
    cd tpp/p04
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 760 -eq $SGE_TASK_ID ]; then
    cd tpp/p05
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 761 -eq $SGE_TASK_ID ]; then
    cd tpp/p06
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 762 -eq $SGE_TASK_ID ]; then
    cd tpp/p07
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 763 -eq $SGE_TASK_ID ]; then
    cd tpp/p08
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 764 -eq $SGE_TASK_ID ]; then
    cd tpp/p09
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 765 -eq $SGE_TASK_ID ]; then
    cd tpp/p10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 766 -eq $SGE_TASK_ID ]; then
    cd tpp/p11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 767 -eq $SGE_TASK_ID ]; then
    cd tpp/p12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 768 -eq $SGE_TASK_ID ]; then
    cd tpp/p13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 769 -eq $SGE_TASK_ID ]; then
    cd tpp/p14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 770 -eq $SGE_TASK_ID ]; then
    cd tpp/p15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 771 -eq $SGE_TASK_ID ]; then
    cd tpp/p16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 772 -eq $SGE_TASK_ID ]; then
    cd tpp/p17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 773 -eq $SGE_TASK_ID ]; then
    cd tpp/p18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 774 -eq $SGE_TASK_ID ]; then
    cd tpp/p19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 775 -eq $SGE_TASK_ID ]; then
    cd tpp/p20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 776 -eq $SGE_TASK_ID ]; then
    cd tpp/p21
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 777 -eq $SGE_TASK_ID ]; then
    cd tpp/p22
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 778 -eq $SGE_TASK_ID ]; then
    cd tpp/p23
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 779 -eq $SGE_TASK_ID ]; then
    cd tpp/p24
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 780 -eq $SGE_TASK_ID ]; then
    cd tpp/p25
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 781 -eq $SGE_TASK_ID ]; then
    cd tpp/p26
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 782 -eq $SGE_TASK_ID ]; then
    cd tpp/p27
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 783 -eq $SGE_TASK_ID ]; then
    cd tpp/p28
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 784 -eq $SGE_TASK_ID ]; then
    cd tpp/p29
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 785 -eq $SGE_TASK_ID ]; then
    cd tpp/p30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 786 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p01
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 787 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p02
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 788 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p03
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 789 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p04
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 790 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p05
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 791 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p06
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 792 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p07
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 793 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p08
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 794 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p09
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 795 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 796 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 797 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 798 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 799 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 800 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 801 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 802 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 803 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 804 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 805 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 806 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p21
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 807 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p22
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 808 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p23
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 809 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p24
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 810 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p25
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 811 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p26
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 812 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p27
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 813 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p28
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 814 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p29
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 815 -eq $SGE_TASK_ID ]; then
    cd trucks-strips/p30
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 816 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile1
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 817 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile2
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 818 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile3
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 819 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile4
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 820 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile5
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 821 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile6
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 822 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile7
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 823 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile8
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 824 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile9
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 825 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile10
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 826 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile11
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 827 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile12
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 828 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile13
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 829 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile14
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 830 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile15
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 831 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile16
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 832 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile17
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 833 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile18
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 834 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile19
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
if [ 835 -eq $SGE_TASK_ID ]; then
    cd zenotravel/pfile20
    /usr/bin/time --format "%U\n%S\n" ../../preprocess < output.sas 1>| preprocess.log 2>| preprocess.time
    exit $?
fi
