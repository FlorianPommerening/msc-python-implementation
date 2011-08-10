#! /bin/bash
#$ -S /bin/bash
#$ -m n
#$ -cwd
#$ -e log 
#$ -o log
#$ -l h_cpu=0:30:0
#$ -l h_vmem=2G
#$ -q athlon_core.q
#$ -t 1-835

if [ 1 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p01-airport1-p1.pddl /home/flogo/downward/benchmarks/airport/p01-domain.pddl &> logs/airport_p01-airport1-p1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 2 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p02-airport1-p1.pddl /home/flogo/downward/benchmarks/airport/p02-domain.pddl &> logs/airport_p02-airport1-p1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 3 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p03-airport1-p2.pddl /home/flogo/downward/benchmarks/airport/p03-domain.pddl &> logs/airport_p03-airport1-p2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 4 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p04-airport2-p1.pddl /home/flogo/downward/benchmarks/airport/p04-domain.pddl &> logs/airport_p04-airport2-p1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 5 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p05-airport2-p1.pddl /home/flogo/downward/benchmarks/airport/p05-domain.pddl &> logs/airport_p05-airport2-p1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 6 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p06-airport2-p2.pddl /home/flogo/downward/benchmarks/airport/p06-domain.pddl &> logs/airport_p06-airport2-p2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 7 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p07-airport2-p2.pddl /home/flogo/downward/benchmarks/airport/p07-domain.pddl &> logs/airport_p07-airport2-p2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 8 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p08-airport2-p3.pddl /home/flogo/downward/benchmarks/airport/p08-domain.pddl &> logs/airport_p08-airport2-p3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 9 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p09-airport2-p4.pddl /home/flogo/downward/benchmarks/airport/p09-domain.pddl &> logs/airport_p09-airport2-p4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 10 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p10-airport3-p1.pddl /home/flogo/downward/benchmarks/airport/p10-domain.pddl &> logs/airport_p10-airport3-p1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 11 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p11-airport3-p1.pddl /home/flogo/downward/benchmarks/airport/p11-domain.pddl &> logs/airport_p11-airport3-p1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 12 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p12-airport3-p2.pddl /home/flogo/downward/benchmarks/airport/p12-domain.pddl &> logs/airport_p12-airport3-p2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 13 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p13-airport3-p2.pddl /home/flogo/downward/benchmarks/airport/p13-domain.pddl &> logs/airport_p13-airport3-p2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 14 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p14-airport3-p3.pddl /home/flogo/downward/benchmarks/airport/p14-domain.pddl &> logs/airport_p14-airport3-p3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 15 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p15-airport3-p3.pddl /home/flogo/downward/benchmarks/airport/p15-domain.pddl &> logs/airport_p15-airport3-p3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 16 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p16-airport3-p4.pddl /home/flogo/downward/benchmarks/airport/p16-domain.pddl &> logs/airport_p16-airport3-p4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 17 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p17-airport3-p5.pddl /home/flogo/downward/benchmarks/airport/p17-domain.pddl &> logs/airport_p17-airport3-p5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 18 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p18-airport3-p6.pddl /home/flogo/downward/benchmarks/airport/p18-domain.pddl &> logs/airport_p18-airport3-p6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 19 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p19-airport3-p6.pddl /home/flogo/downward/benchmarks/airport/p19-domain.pddl &> logs/airport_p19-airport3-p6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 20 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p20-airport3-p7.pddl /home/flogo/downward/benchmarks/airport/p20-domain.pddl &> logs/airport_p20-airport3-p7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 21 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p21-airport4halfMUC-p2.pddl /home/flogo/downward/benchmarks/airport/p21-domain.pddl &> logs/airport_p21-airport4halfMUC-p2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 22 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p22-airport4halfMUC-p3.pddl /home/flogo/downward/benchmarks/airport/p22-domain.pddl &> logs/airport_p22-airport4halfMUC-p3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 23 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p23-airport4halfMUC-p4.pddl /home/flogo/downward/benchmarks/airport/p23-domain.pddl &> logs/airport_p23-airport4halfMUC-p4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 24 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p24-airport4halfMUC-p4.pddl /home/flogo/downward/benchmarks/airport/p24-domain.pddl &> logs/airport_p24-airport4halfMUC-p4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 25 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p25-airport4halfMUC-p5.pddl /home/flogo/downward/benchmarks/airport/p25-domain.pddl &> logs/airport_p25-airport4halfMUC-p5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 26 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p26-airport4halfMUC-p6.pddl /home/flogo/downward/benchmarks/airport/p26-domain.pddl &> logs/airport_p26-airport4halfMUC-p6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 27 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p27-airport4halfMUC-p6.pddl /home/flogo/downward/benchmarks/airport/p27-domain.pddl &> logs/airport_p27-airport4halfMUC-p6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 28 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p28-airport4halfMUC-p7.pddl /home/flogo/downward/benchmarks/airport/p28-domain.pddl &> logs/airport_p28-airport4halfMUC-p7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 29 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p29-airport4halfMUC-p8.pddl /home/flogo/downward/benchmarks/airport/p29-domain.pddl &> logs/airport_p29-airport4halfMUC-p8_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 30 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p30-airport4halfMUC-p8.pddl /home/flogo/downward/benchmarks/airport/p30-domain.pddl &> logs/airport_p30-airport4halfMUC-p8_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 31 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p31-airport4halfMUC-p9.pddl /home/flogo/downward/benchmarks/airport/p31-domain.pddl &> logs/airport_p31-airport4halfMUC-p9_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 32 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p32-airport4halfMUC-p10.pddl /home/flogo/downward/benchmarks/airport/p32-domain.pddl &> logs/airport_p32-airport4halfMUC-p10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 33 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p33-airport4halfMUC-p10.pddl /home/flogo/downward/benchmarks/airport/p33-domain.pddl &> logs/airport_p33-airport4halfMUC-p10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 34 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p34-airport4halfMUC-p11.pddl /home/flogo/downward/benchmarks/airport/p34-domain.pddl &> logs/airport_p34-airport4halfMUC-p11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 35 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p35-airport4halfMUC-p12.pddl /home/flogo/downward/benchmarks/airport/p35-domain.pddl &> logs/airport_p35-airport4halfMUC-p12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 36 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p36-airport5MUC-p2.pddl /home/flogo/downward/benchmarks/airport/p36-domain.pddl &> logs/airport_p36-airport5MUC-p2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 37 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p37-airport5MUC-p3.pddl /home/flogo/downward/benchmarks/airport/p37-domain.pddl &> logs/airport_p37-airport5MUC-p3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 38 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p38-airport5MUC-p3.pddl /home/flogo/downward/benchmarks/airport/p38-domain.pddl &> logs/airport_p38-airport5MUC-p3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 39 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p39-airport5MUC-p4.pddl /home/flogo/downward/benchmarks/airport/p39-domain.pddl &> logs/airport_p39-airport5MUC-p4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 40 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p40-airport5MUC-p4.pddl /home/flogo/downward/benchmarks/airport/p40-domain.pddl &> logs/airport_p40-airport5MUC-p4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 41 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p41-airport5MUC-p4.pddl /home/flogo/downward/benchmarks/airport/p41-domain.pddl &> logs/airport_p41-airport5MUC-p4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 42 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p42-airport5MUC-p5.pddl /home/flogo/downward/benchmarks/airport/p42-domain.pddl &> logs/airport_p42-airport5MUC-p5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 43 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p43-airport5MUC-p5.pddl /home/flogo/downward/benchmarks/airport/p43-domain.pddl &> logs/airport_p43-airport5MUC-p5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 44 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p44-airport5MUC-p5.pddl /home/flogo/downward/benchmarks/airport/p44-domain.pddl &> logs/airport_p44-airport5MUC-p5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 45 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p45-airport5MUC-p6.pddl /home/flogo/downward/benchmarks/airport/p45-domain.pddl &> logs/airport_p45-airport5MUC-p6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 46 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p46-airport5MUC-p6.pddl /home/flogo/downward/benchmarks/airport/p46-domain.pddl &> logs/airport_p46-airport5MUC-p6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 47 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p47-airport5MUC-p8.pddl /home/flogo/downward/benchmarks/airport/p47-domain.pddl &> logs/airport_p47-airport5MUC-p8_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 48 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p48-airport5MUC-p9.pddl /home/flogo/downward/benchmarks/airport/p48-domain.pddl &> logs/airport_p48-airport5MUC-p9_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 49 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p49-airport5MUC-p10.pddl /home/flogo/downward/benchmarks/airport/p49-domain.pddl &> logs/airport_p49-airport5MUC-p10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 50 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/airport/p50-airport5MUC-p15.pddl /home/flogo/downward/benchmarks/airport/p50-domain.pddl &> logs/airport_p50-airport5MUC-p15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 51 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-10-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-10-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 52 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-10-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-10-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 53 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-10-2.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-10-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 54 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-11-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-11-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 55 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-11-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-11-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 56 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-11-2.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-11-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 57 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-12-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-12-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 58 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-12-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-12-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 59 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-13-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-13-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 60 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-13-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-13-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 61 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-14-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-14-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 62 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-14-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-14-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 63 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-15-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-15-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 64 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-15-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-15-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 65 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-16-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-16-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 66 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-16-2.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-16-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 67 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-17-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-17-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 68 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-4-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-4-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 69 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-4-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-4-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 70 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-4-2.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-4-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 71 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-5-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-5-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 72 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-5-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-5-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 73 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-5-2.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-5-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 74 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-6-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-6-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 75 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-6-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-6-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 76 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-6-2.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-6-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 77 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-7-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-7-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 78 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-7-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-7-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 79 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-7-2.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-7-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 80 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-8-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-8-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 81 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-8-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-8-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 82 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-8-2.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-8-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 83 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-9-0.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-9-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 84 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-9-1.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-9-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 85 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/blocks/probBLOCKS-9-2.pddl /home/flogo/downward/benchmarks/blocks/domain.pddl &> logs/blocks_probBLOCKS-9-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 86 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile1 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 87 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile10 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 88 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile11 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 89 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile12 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 90 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile13 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 91 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile14 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 92 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile15 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 93 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile16 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 94 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile17 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 95 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile18 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 96 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile19 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 97 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile2 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 98 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile20 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 99 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile21 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile21_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 100 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile22 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile22_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 101 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile3 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 102 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile4 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 103 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile5 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 104 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile6 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 105 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile7 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 106 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile8 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile8_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 107 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/depot/pfile9 /home/flogo/downward/benchmarks/depot/domain.pddl &> logs/depot_pfile9_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 108 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile1 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 109 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile10 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 110 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile11 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 111 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile12 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 112 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile13 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 113 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile14 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 114 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile15 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 115 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile16 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 116 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile17 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 117 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile18 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 118 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile19 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 119 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile2 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 120 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile20 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 121 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile3 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 122 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile4 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 123 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile5 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 124 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile6 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 125 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile7 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 126 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile8 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile8_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 127 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/driverlog/pfile9 /home/flogo/downward/benchmarks/driverlog/domain.pddl &> logs/driverlog_pfile9_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 128 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile1 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 129 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile10 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 130 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile11 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 131 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile12 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 132 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile13 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 133 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile14 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 134 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile15 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 135 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile16 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 136 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile17 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 137 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile18 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 138 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile19 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 139 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile2 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 140 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile20 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 141 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile3 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 142 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile4 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 143 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile5 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 144 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile6 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 145 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile7 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 146 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile8 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile8_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 147 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/pfile9 /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_pfile9_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 148 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-10-1.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-10-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 149 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-10-2.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-10-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 150 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-10-3.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-10-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 151 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-10-4.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-10-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 152 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-10-5.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-10-5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 153 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-11-1.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-11-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 154 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-11-2.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-11-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 155 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-11-3.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-11-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 156 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-11-4.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-11-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 157 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-11-5.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-11-5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 158 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-12-1.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-12-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 159 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-12-2.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-12-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 160 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-12-3.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-12-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 161 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-12-4.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-12-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 162 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-12-5.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-12-5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 163 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-13-1.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-13-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 164 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-13-2.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-13-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 165 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-13-3.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-13-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 166 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-13-4.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-13-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 167 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-13-5.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-13-5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 168 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-2-1.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-2-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 169 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-2-2.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-2-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 170 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-2-3.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-2-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 171 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-2-4.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-2-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 172 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-2-5.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-2-5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 173 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-3-1.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-3-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 174 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-3-2.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-3-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 175 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-3-3.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-3-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 176 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-3-4.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-3-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 177 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-3-5.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-3-5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 178 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-4-1.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-4-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 179 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-4-2.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-4-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 180 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-4-3.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-4-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 181 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-4-4.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-4-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 182 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-4-5.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-4-5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 183 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-5-1.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-5-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 184 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-5-2.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-5-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 185 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-5-3.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-5-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 186 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-5-4.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-5-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 187 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-5-5.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-5-5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 188 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-6-1.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-6-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 189 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-6-2.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-6-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 190 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-6-3.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-6-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 191 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-6-4.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-6-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 192 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-6-5.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-6-5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 193 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-7-1.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-7-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 194 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-7-2.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-7-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 195 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-7-3.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-7-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 196 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-7-4.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-7-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 197 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-7-5.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-7-5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 198 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-8-1.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-8-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 199 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-8-2.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-8-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 200 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-8-3.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-8-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 201 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-8-4.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-8-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 202 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-8-5.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-8-5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 203 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-9-1.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-9-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 204 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-9-2.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-9-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 205 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-9-3.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-9-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 206 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-9-4.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-9-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 207 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/freecell/probfreecell-9-5.pddl /home/flogo/downward/benchmarks/freecell/domain.pddl &> logs/freecell_probfreecell-9-5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 208 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob01.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob01_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 209 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob02.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob02_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 210 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob03.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob03_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 211 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob04.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob04_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 212 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob05.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob05_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 213 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob06.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob06_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 214 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob07.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob07_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 215 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob08.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob08_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 216 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob09.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob09_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 217 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob10.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 218 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob11.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 219 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob12.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 220 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob13.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 221 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob14.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 222 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob15.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 223 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob16.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 224 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob17.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 225 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob18.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 226 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob19.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 227 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/gripper/prob20.pddl /home/flogo/downward/benchmarks/gripper/domain.pddl &> logs/gripper_prob20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 228 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-10-0.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-10-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 229 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-10-1.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-10-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 230 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-11-0.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-11-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 231 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-11-1.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-11-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 232 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-12-0.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-12-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 233 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-12-1.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-12-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 234 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-13-0.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-13-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 235 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-13-1.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-13-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 236 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-14-0.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-14-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 237 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-14-1.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-14-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 238 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-15-0.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-15-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 239 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-15-1.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-15-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 240 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-4-0.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-4-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 241 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-4-1.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-4-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 242 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-4-2.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-4-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 243 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-5-0.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-5-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 244 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-5-1.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-5-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 245 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-5-2.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-5-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 246 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-6-0.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-6-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 247 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-6-1.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-6-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 248 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-6-2.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-6-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 249 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-6-9.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-6-9_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 250 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-7-0.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-7-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 251 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-7-1.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-7-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 252 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-8-0.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-8-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 253 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-8-1.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-8-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 254 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-9-0.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-9-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 255 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics00/probLOGISTICS-9-1.pddl /home/flogo/downward/benchmarks/logistics00/domain.pddl &> logs/logistics00_probLOGISTICS-9-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 256 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob01.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob01_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 257 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob02.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob02_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 258 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob03.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob03_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 259 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob04.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob04_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 260 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob05.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob05_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 261 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob06.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob06_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 262 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob07.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob07_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 263 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob08.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob08_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 264 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob09.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob09_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 265 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob10.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 266 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob11.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 267 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob12.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 268 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob13.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 269 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob14.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 270 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob15.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 271 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob16.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 272 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob17.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 273 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob18.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 274 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob19.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 275 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob20.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 276 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob21.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob21_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 277 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob22.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob22_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 278 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob23.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob23_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 279 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob24.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob24_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 280 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob25.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob25_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 281 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob26.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob26_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 282 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob27.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob27_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 283 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob28.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob28_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 284 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob29.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob29_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 285 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob30.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 286 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob31.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob31_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 287 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob32.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob32_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 288 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob33.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob33_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 289 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob34.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob34_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 290 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/logistics98/prob35.pddl /home/flogo/downward/benchmarks/logistics98/domain.pddl &> logs/logistics98_prob35_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 291 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s1-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s1-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 292 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s1-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s1-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 293 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s1-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s1-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 294 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s1-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s1-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 295 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s1-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s1-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 296 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s10-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s10-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 297 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s10-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s10-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 298 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s10-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s10-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 299 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s10-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s10-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 300 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s10-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s10-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 301 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s11-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s11-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 302 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s11-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s11-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 303 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s11-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s11-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 304 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s11-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s11-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 305 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s11-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s11-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 306 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s12-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s12-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 307 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s12-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s12-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 308 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s12-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s12-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 309 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s12-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s12-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 310 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s12-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s12-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 311 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s13-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s13-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 312 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s13-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s13-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 313 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s13-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s13-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 314 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s13-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s13-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 315 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s13-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s13-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 316 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s14-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s14-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 317 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s14-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s14-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 318 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s14-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s14-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 319 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s14-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s14-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 320 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s14-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s14-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 321 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s15-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s15-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 322 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s15-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s15-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 323 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s15-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s15-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 324 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s15-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s15-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 325 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s15-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s15-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 326 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s16-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s16-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 327 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s16-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s16-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 328 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s16-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s16-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 329 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s16-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s16-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 330 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s16-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s16-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 331 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s17-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s17-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 332 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s17-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s17-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 333 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s17-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s17-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 334 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s17-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s17-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 335 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s17-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s17-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 336 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s18-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s18-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 337 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s18-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s18-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 338 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s18-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s18-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 339 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s18-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s18-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 340 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s18-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s18-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 341 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s19-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s19-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 342 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s19-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s19-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 343 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s19-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s19-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 344 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s19-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s19-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 345 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s19-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s19-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 346 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s2-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s2-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 347 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s2-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s2-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 348 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s2-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s2-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 349 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s2-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s2-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 350 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s2-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s2-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 351 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s20-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s20-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 352 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s20-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s20-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 353 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s20-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s20-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 354 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s20-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s20-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 355 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s20-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s20-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 356 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s21-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s21-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 357 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s21-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s21-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 358 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s21-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s21-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 359 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s21-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s21-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 360 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s21-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s21-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 361 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s22-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s22-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 362 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s22-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s22-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 363 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s22-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s22-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 364 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s22-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s22-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 365 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s22-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s22-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 366 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s23-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s23-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 367 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s23-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s23-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 368 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s23-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s23-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 369 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s23-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s23-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 370 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s23-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s23-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 371 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s24-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s24-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 372 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s24-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s24-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 373 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s24-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s24-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 374 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s24-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s24-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 375 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s24-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s24-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 376 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s25-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s25-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 377 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s25-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s25-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 378 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s25-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s25-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 379 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s25-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s25-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 380 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s25-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s25-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 381 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s26-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s26-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 382 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s26-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s26-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 383 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s26-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s26-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 384 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s26-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s26-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 385 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s26-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s26-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 386 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s27-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s27-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 387 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s27-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s27-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 388 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s27-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s27-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 389 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s27-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s27-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 390 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s27-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s27-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 391 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s28-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s28-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 392 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s28-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s28-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 393 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s28-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s28-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 394 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s28-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s28-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 395 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s28-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s28-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 396 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s29-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s29-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 397 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s29-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s29-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 398 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s29-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s29-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 399 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s29-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s29-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 400 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s29-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s29-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 401 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s3-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s3-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 402 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s3-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s3-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 403 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s3-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s3-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 404 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s3-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s3-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 405 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s3-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s3-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 406 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s30-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s30-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 407 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s30-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s30-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 408 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s30-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s30-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 409 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s30-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s30-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 410 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s30-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s30-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 411 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s4-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s4-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 412 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s4-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s4-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 413 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s4-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s4-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 414 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s4-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s4-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 415 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s4-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s4-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 416 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s5-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s5-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 417 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s5-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s5-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 418 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s5-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s5-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 419 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s5-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s5-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 420 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s5-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s5-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 421 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s6-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s6-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 422 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s6-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s6-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 423 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s6-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s6-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 424 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s6-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s6-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 425 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s6-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s6-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 426 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s7-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s7-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 427 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s7-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s7-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 428 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s7-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s7-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 429 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s7-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s7-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 430 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s7-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s7-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 431 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s8-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s8-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 432 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s8-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s8-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 433 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s8-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s8-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 434 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s8-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s8-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 435 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s8-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s8-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 436 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s9-0.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s9-0_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 437 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s9-1.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s9-1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 438 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s9-2.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s9-2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 439 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s9-3.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s9-3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 440 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/miconic/s9-4.pddl /home/flogo/downward/benchmarks/miconic/domain.pddl &> logs/miconic_s9-4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 441 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob01.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob01_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 442 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob02.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob02_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 443 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob03.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob03_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 444 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob04.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob04_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 445 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob05.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob05_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 446 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob06.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob06_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 447 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob07.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob07_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 448 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob08.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob08_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 449 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob09.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob09_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 450 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob10.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 451 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob11.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 452 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob12.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 453 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob13.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 454 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob14.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 455 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob15.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 456 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob16.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 457 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob17.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 458 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob18.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 459 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob19.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 460 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob20.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 461 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob21.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob21_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 462 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob22.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob22_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 463 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob23.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob23_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 464 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob24.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob24_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 465 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob25.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob25_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 466 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob26.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob26_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 467 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob27.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob27_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 468 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob28.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob28_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 469 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob29.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob29_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 470 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob30.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 471 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob31.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob31_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 472 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob32.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob32_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 473 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob33.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob33_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 474 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob34.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob34_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 475 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mprime/prob35.pddl /home/flogo/downward/benchmarks/mprime/domain.pddl &> logs/mprime_prob35_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 476 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob01.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob01_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 477 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob02.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob02_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 478 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob03.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob03_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 479 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob04.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob04_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 480 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob05.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob05_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 481 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob06.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob06_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 482 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob07.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob07_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 483 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob08.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob08_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 484 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob09.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob09_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 485 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob10.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 486 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob11.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 487 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob12.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 488 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob13.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 489 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob14.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 490 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob15.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 491 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob16.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 492 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob17.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 493 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob18.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 494 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob19.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 495 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob20.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 496 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob21.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob21_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 497 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob22.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob22_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 498 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob23.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob23_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 499 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob24.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob24_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 500 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob25.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob25_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 501 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob26.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob26_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 502 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob27.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob27_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 503 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob28.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob28_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 504 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob29.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob29_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 505 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/mystery/prob30.pddl /home/flogo/downward/benchmarks/mystery/domain.pddl &> logs/mystery_prob30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 506 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p01.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p01.pddl &> logs/openstacks-strips_p01_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 507 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p02.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p02.pddl &> logs/openstacks-strips_p02_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 508 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p03.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p03.pddl &> logs/openstacks-strips_p03_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 509 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p04.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p04.pddl &> logs/openstacks-strips_p04_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 510 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p05.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p05.pddl &> logs/openstacks-strips_p05_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 511 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p06.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p06.pddl &> logs/openstacks-strips_p06_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 512 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p07.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p07.pddl &> logs/openstacks-strips_p07_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 513 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p08.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p08.pddl &> logs/openstacks-strips_p08_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 514 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p09.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p09.pddl &> logs/openstacks-strips_p09_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 515 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p10.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p10.pddl &> logs/openstacks-strips_p10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 516 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p11.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p11.pddl &> logs/openstacks-strips_p11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 517 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p12.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p12.pddl &> logs/openstacks-strips_p12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 518 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p13.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p13.pddl &> logs/openstacks-strips_p13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 519 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p14.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p14.pddl &> logs/openstacks-strips_p14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 520 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p15.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p15.pddl &> logs/openstacks-strips_p15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 521 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p16.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p16.pddl &> logs/openstacks-strips_p16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 522 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p17.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p17.pddl &> logs/openstacks-strips_p17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 523 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p18.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p18.pddl &> logs/openstacks-strips_p18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 524 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p19.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p19.pddl &> logs/openstacks-strips_p19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 525 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p20.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p20.pddl &> logs/openstacks-strips_p20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 526 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p21.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p21.pddl &> logs/openstacks-strips_p21_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 527 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p22.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p22.pddl &> logs/openstacks-strips_p22_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 528 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p23.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p23.pddl &> logs/openstacks-strips_p23_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 529 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p24.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p24.pddl &> logs/openstacks-strips_p24_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 530 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p25.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p25.pddl &> logs/openstacks-strips_p25_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 531 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p26.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p26.pddl &> logs/openstacks-strips_p26_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 532 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p27.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p27.pddl &> logs/openstacks-strips_p27_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 533 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p28.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p28.pddl &> logs/openstacks-strips_p28_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 534 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p29.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p29.pddl &> logs/openstacks-strips_p29_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 535 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/openstacks-strips/p30.pddl /home/flogo/downward/benchmarks/openstacks-strips/domain_p30.pddl &> logs/openstacks-strips_p30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 536 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p01.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p01.pddl &> logs/pathways-noneg_p01_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 537 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p02.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p02.pddl &> logs/pathways-noneg_p02_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 538 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p03.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p03.pddl &> logs/pathways-noneg_p03_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 539 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p04.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p04.pddl &> logs/pathways-noneg_p04_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 540 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p05.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p05.pddl &> logs/pathways-noneg_p05_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 541 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p06.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p06.pddl &> logs/pathways-noneg_p06_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 542 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p07.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p07.pddl &> logs/pathways-noneg_p07_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 543 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p08.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p08.pddl &> logs/pathways-noneg_p08_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 544 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p09.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p09.pddl &> logs/pathways-noneg_p09_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 545 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p10.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p10.pddl &> logs/pathways-noneg_p10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 546 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p11.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p11.pddl &> logs/pathways-noneg_p11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 547 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p12.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p12.pddl &> logs/pathways-noneg_p12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 548 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p13.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p13.pddl &> logs/pathways-noneg_p13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 549 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p14.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p14.pddl &> logs/pathways-noneg_p14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 550 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p15.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p15.pddl &> logs/pathways-noneg_p15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 551 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p16.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p16.pddl &> logs/pathways-noneg_p16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 552 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p17.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p17.pddl &> logs/pathways-noneg_p17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 553 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p18.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p18.pddl &> logs/pathways-noneg_p18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 554 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p19.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p19.pddl &> logs/pathways-noneg_p19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 555 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p20.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p20.pddl &> logs/pathways-noneg_p20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 556 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p21.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p21.pddl &> logs/pathways-noneg_p21_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 557 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p22.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p22.pddl &> logs/pathways-noneg_p22_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 558 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p23.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p23.pddl &> logs/pathways-noneg_p23_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 559 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p24.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p24.pddl &> logs/pathways-noneg_p24_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 560 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p25.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p25.pddl &> logs/pathways-noneg_p25_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 561 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p26.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p26.pddl &> logs/pathways-noneg_p26_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 562 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p27.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p27.pddl &> logs/pathways-noneg_p27_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 563 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p28.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p28.pddl &> logs/pathways-noneg_p28_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 564 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p29.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p29.pddl &> logs/pathways-noneg_p29_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 565 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pathways-noneg/p30.pddl /home/flogo/downward/benchmarks/pathways-noneg/domain_p30.pddl &> logs/pathways-noneg_p30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 566 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p01-net1-b6-g2.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p01-net1-b6-g2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 567 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p02-net1-b6-g4.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p02-net1-b6-g4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 568 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p03-net1-b8-g3.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p03-net1-b8-g3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 569 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p04-net1-b8-g5.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p04-net1-b8-g5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 570 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p05-net1-b10-g4.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p05-net1-b10-g4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 571 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p06-net1-b10-g6.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p06-net1-b10-g6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 572 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p07-net1-b12-g5.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p07-net1-b12-g5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 573 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p08-net1-b12-g7.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p08-net1-b12-g7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 574 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p09-net1-b14-g6.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p09-net1-b14-g6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 575 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p10-net1-b14-g8.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p10-net1-b14-g8_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 576 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p11-net2-b10-g2.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p11-net2-b10-g2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 577 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p12-net2-b10-g4.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p12-net2-b10-g4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 578 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p13-net2-b12-g3.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p13-net2-b12-g3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 579 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p14-net2-b12-g5.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p14-net2-b12-g5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 580 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p15-net2-b14-g4.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p15-net2-b14-g4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 581 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p16-net2-b14-g6.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p16-net2-b14-g6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 582 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p17-net2-b16-g5.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p17-net2-b16-g5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 583 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p18-net2-b16-g7.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p18-net2-b16-g7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 584 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p19-net2-b18-g6.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p19-net2-b18-g6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 585 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p20-net2-b18-g8.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p20-net2-b18-g8_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 586 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p21-net3-b12-g2.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p21-net3-b12-g2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 587 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p22-net3-b12-g4.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p22-net3-b12-g4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 588 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p23-net3-b14-g3.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p23-net3-b14-g3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 589 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p24-net3-b14-g5.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p24-net3-b14-g5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 590 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p25-net3-b16-g5.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p25-net3-b16-g5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 591 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p26-net3-b16-g7.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p26-net3-b16-g7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 592 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p27-net3-b18-g6.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p27-net3-b18-g6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 593 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p28-net3-b18-g7.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p28-net3-b18-g7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 594 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p29-net3-b20-g6.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p29-net3-b20-g6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 595 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p30-net3-b20-g8.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p30-net3-b20-g8_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 596 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p31-net4-b14-g3.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p31-net4-b14-g3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 597 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p32-net4-b14-g5.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p32-net4-b14-g5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 598 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p33-net4-b16-g5.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p33-net4-b16-g5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 599 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p34-net4-b16-g6.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p34-net4-b16-g6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 600 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p35-net4-b18-g4.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p35-net4-b18-g4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 601 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p36-net4-b18-g6.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p36-net4-b18-g6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 602 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p37-net4-b20-g5.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p37-net4-b20-g5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 603 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p38-net4-b20-g7.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p38-net4-b20-g7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 604 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p39-net4-b22-g7.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p39-net4-b22-g7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 605 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p40-net4-b22-g8.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p40-net4-b22-g8_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 606 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p41-net5-b22-g2.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p41-net5-b22-g2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 607 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p42-net5-b22-g4.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p42-net5-b22-g4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 608 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p43-net5-b24-g3.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p43-net5-b24-g3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 609 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p44-net5-b24-g5.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p44-net5-b24-g5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 610 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p45-net5-b26-g4.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p45-net5-b26-g4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 611 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p46-net5-b26-g6.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p46-net5-b26-g6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 612 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p47-net5-b28-g5.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p47-net5-b28-g5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 613 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p48-net5-b28-g7.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p48-net5-b28-g7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 614 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p49-net5-b30-g6.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p49-net5-b30-g6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 615 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-notankage/p50-net5-b30-g8.pddl /home/flogo/downward/benchmarks/pipesworld-notankage/domain.pddl &> logs/pipesworld-notankage_p50-net5-b30-g8_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 616 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p01-net1-b6-g2-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p01-net1-b6-g2-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 617 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p02-net1-b6-g4-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p02-net1-b6-g4-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 618 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p03-net1-b8-g3-t80.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p03-net1-b8-g3-t80_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 619 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p04-net1-b8-g5-t80.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p04-net1-b8-g5-t80_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 620 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p05-net1-b10-g4-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p05-net1-b10-g4-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 621 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p06-net1-b10-g6-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p06-net1-b10-g6-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 622 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p07-net1-b12-g5-t80.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p07-net1-b12-g5-t80_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 623 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p08-net1-b12-g7-t80.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p08-net1-b12-g7-t80_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 624 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p09-net1-b14-g6-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p09-net1-b14-g6-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 625 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p10-net1-b14-g8-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p10-net1-b14-g8-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 626 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p11-net2-b10-g2-t30.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p11-net2-b10-g2-t30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 627 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p12-net2-b10-g4-t60.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p12-net2-b10-g4-t60_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 628 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p13-net2-b12-g3-t70.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p13-net2-b12-g3-t70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 629 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p14-net2-b12-g5-t30.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p14-net2-b12-g5-t30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 630 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p15-net2-b14-g4-t30.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p15-net2-b14-g4-t30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 631 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p16-net2-b14-g6-t80.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p16-net2-b14-g6-t80_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 632 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p17-net2-b16-g5-t20.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p17-net2-b16-g5-t20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 633 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p18-net2-b16-g7-t60.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p18-net2-b16-g7-t60_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 634 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p19-net2-b18-g6-t60.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p19-net2-b18-g6-t60_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 635 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p20-net2-b18-g8-t90.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p20-net2-b18-g8-t90_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 636 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p21-net3-b12-g2-t60.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p21-net3-b12-g2-t60_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 637 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p22-net3-b12-g4-t60.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p22-net3-b12-g4-t60_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 638 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p23-net3-b14-g3-t60.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p23-net3-b14-g3-t60_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 639 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p24-net3-b14-g5-t60.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p24-net3-b14-g5-t60_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 640 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p25-net3-b16-g5-t60.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p25-net3-b16-g5-t60_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 641 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p26-net3-b16-g7-t70.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p26-net3-b16-g7-t70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 642 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p27-net3-b18-g6-t70.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p27-net3-b18-g6-t70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 643 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p28-net3-b18-g7-t70.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p28-net3-b18-g7-t70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 644 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p29-net3-b20-g6-t70.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p29-net3-b20-g6-t70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 645 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p30-net3-b20-g8-t70.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p30-net3-b20-g8-t70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 646 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p31-net4-b14-g3-t20.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p31-net4-b14-g3-t20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 647 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p32-net4-b14-g5-t30.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p32-net4-b14-g5-t30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 648 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p33-net4-b16-g5-t60.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p33-net4-b16-g5-t60_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 649 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p34-net4-b16-g6-t60.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p34-net4-b16-g6-t60_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 650 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p35-net4-b18-g4-t90.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p35-net4-b18-g4-t90_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 651 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p36-net4-b18-g6-t90.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p36-net4-b18-g6-t90_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 652 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p37-net4-b20-g5-t60.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p37-net4-b20-g5-t60_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 653 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p38-net4-b20-g7-t60.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p38-net4-b20-g7-t60_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 654 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p39-net4-b22-g7-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p39-net4-b22-g7-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 655 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p40-net4-b22-g8-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p40-net4-b22-g8-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 656 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p41-net5-b22-g2-t20.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p41-net5-b22-g2-t20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 657 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p42-net5-b22-g4-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p42-net5-b22-g4-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 658 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p43-net5-b24-g3-t80.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p43-net5-b24-g3-t80_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 659 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p44-net5-b24-g5-t80.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p44-net5-b24-g5-t80_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 660 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p45-net5-b26-g4-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p45-net5-b26-g4-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 661 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p46-net5-b26-g6-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p46-net5-b26-g6-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 662 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p47-net5-b28-g5-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p47-net5-b28-g5-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 663 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p48-net5-b28-g7-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p48-net5-b28-g7-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 664 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p49-net5-b30-g6-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p49-net5-b30-g6-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 665 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/pipesworld-tankage/p50-net5-b30-g8-t50.pddl /home/flogo/downward/benchmarks/pipesworld-tankage/domain.pddl &> logs/pipesworld-tankage_p50-net5-b30-g8-t50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 666 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p01-s2-n1-l2-f50.pddl /home/flogo/downward/benchmarks/psr-small/p01-domain.pddl &> logs/psr-small_p01-s2-n1-l2-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 667 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p02-s5-n1-l3-f30.pddl /home/flogo/downward/benchmarks/psr-small/p02-domain.pddl &> logs/psr-small_p02-s5-n1-l3-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 668 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p03-s7-n1-l3-f70.pddl /home/flogo/downward/benchmarks/psr-small/p03-domain.pddl &> logs/psr-small_p03-s7-n1-l3-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 669 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p04-s8-n1-l4-f10.pddl /home/flogo/downward/benchmarks/psr-small/p04-domain.pddl &> logs/psr-small_p04-s8-n1-l4-f10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 670 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p05-s9-n1-l4-f30.pddl /home/flogo/downward/benchmarks/psr-small/p05-domain.pddl &> logs/psr-small_p05-s9-n1-l4-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 671 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p06-s10-n1-l4-f50.pddl /home/flogo/downward/benchmarks/psr-small/p06-domain.pddl &> logs/psr-small_p06-s10-n1-l4-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 672 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p07-s11-n1-l4-f70.pddl /home/flogo/downward/benchmarks/psr-small/p07-domain.pddl &> logs/psr-small_p07-s11-n1-l4-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 673 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p08-s12-n1-l5-f10.pddl /home/flogo/downward/benchmarks/psr-small/p08-domain.pddl &> logs/psr-small_p08-s12-n1-l5-f10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 674 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p09-s13-n1-l5-f30.pddl /home/flogo/downward/benchmarks/psr-small/p09-domain.pddl &> logs/psr-small_p09-s13-n1-l5-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 675 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p10-s17-n2-l2-f30.pddl /home/flogo/downward/benchmarks/psr-small/p10-domain.pddl &> logs/psr-small_p10-s17-n2-l2-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 676 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p11-s18-n2-l2-f50.pddl /home/flogo/downward/benchmarks/psr-small/p11-domain.pddl &> logs/psr-small_p11-s18-n2-l2-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 677 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p12-s21-n2-l3-f30.pddl /home/flogo/downward/benchmarks/psr-small/p12-domain.pddl &> logs/psr-small_p12-s21-n2-l3-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 678 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p13-s22-n2-l3-f50.pddl /home/flogo/downward/benchmarks/psr-small/p13-domain.pddl &> logs/psr-small_p13-s22-n2-l3-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 679 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p14-s23-n2-l3-f70.pddl /home/flogo/downward/benchmarks/psr-small/p14-domain.pddl &> logs/psr-small_p14-s23-n2-l3-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 680 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p15-s24-n2-l4-f10.pddl /home/flogo/downward/benchmarks/psr-small/p15-domain.pddl &> logs/psr-small_p15-s24-n2-l4-f10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 681 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p16-s29-n2-l5-f30.pddl /home/flogo/downward/benchmarks/psr-small/p16-domain.pddl &> logs/psr-small_p16-s29-n2-l5-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 682 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p17-s30-n2-l5-f50.pddl /home/flogo/downward/benchmarks/psr-small/p17-domain.pddl &> logs/psr-small_p17-s30-n2-l5-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 683 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p18-s31-n2-l5-f70.pddl /home/flogo/downward/benchmarks/psr-small/p18-domain.pddl &> logs/psr-small_p18-s31-n2-l5-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 684 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p19-s33-n3-l2-f30.pddl /home/flogo/downward/benchmarks/psr-small/p19-domain.pddl &> logs/psr-small_p19-s33-n3-l2-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 685 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p20-s34-n3-l2-f50.pddl /home/flogo/downward/benchmarks/psr-small/p20-domain.pddl &> logs/psr-small_p20-s34-n3-l2-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 686 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p21-s35-n3-l2-f70.pddl /home/flogo/downward/benchmarks/psr-small/p21-domain.pddl &> logs/psr-small_p21-s35-n3-l2-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 687 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p22-s37-n3-l3-f30.pddl /home/flogo/downward/benchmarks/psr-small/p22-domain.pddl &> logs/psr-small_p22-s37-n3-l3-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 688 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p23-s38-n3-l3-f50.pddl /home/flogo/downward/benchmarks/psr-small/p23-domain.pddl &> logs/psr-small_p23-s38-n3-l3-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 689 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p24-s39-n3-l3-f70.pddl /home/flogo/downward/benchmarks/psr-small/p24-domain.pddl &> logs/psr-small_p24-s39-n3-l3-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 690 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p25-s40-n3-l4-f10.pddl /home/flogo/downward/benchmarks/psr-small/p25-domain.pddl &> logs/psr-small_p25-s40-n3-l4-f10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 691 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p26-s41-n3-l4-f30.pddl /home/flogo/downward/benchmarks/psr-small/p26-domain.pddl &> logs/psr-small_p26-s41-n3-l4-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 692 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p27-s42-n3-l4-f50.pddl /home/flogo/downward/benchmarks/psr-small/p27-domain.pddl &> logs/psr-small_p27-s42-n3-l4-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 693 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p28-s43-n3-l4-f70.pddl /home/flogo/downward/benchmarks/psr-small/p28-domain.pddl &> logs/psr-small_p28-s43-n3-l4-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 694 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p29-s45-n3-l5-f30.pddl /home/flogo/downward/benchmarks/psr-small/p29-domain.pddl &> logs/psr-small_p29-s45-n3-l5-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 695 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p30-s46-n3-l5-f50.pddl /home/flogo/downward/benchmarks/psr-small/p30-domain.pddl &> logs/psr-small_p30-s46-n3-l5-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 696 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p31-s49-n4-l2-f30.pddl /home/flogo/downward/benchmarks/psr-small/p31-domain.pddl &> logs/psr-small_p31-s49-n4-l2-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 697 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p32-s50-n4-l2-f50.pddl /home/flogo/downward/benchmarks/psr-small/p32-domain.pddl &> logs/psr-small_p32-s50-n4-l2-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 698 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p33-s51-n4-l2-f70.pddl /home/flogo/downward/benchmarks/psr-small/p33-domain.pddl &> logs/psr-small_p33-s51-n4-l2-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 699 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p34-s55-n4-l3-f70.pddl /home/flogo/downward/benchmarks/psr-small/p34-domain.pddl &> logs/psr-small_p34-s55-n4-l3-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 700 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p35-s57-n5-l2-f30.pddl /home/flogo/downward/benchmarks/psr-small/p35-domain.pddl &> logs/psr-small_p35-s57-n5-l2-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 701 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p36-s65-n6-l2-f30.pddl /home/flogo/downward/benchmarks/psr-small/p36-domain.pddl &> logs/psr-small_p36-s65-n6-l2-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 702 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p37-s67-n6-l2-f70.pddl /home/flogo/downward/benchmarks/psr-small/p37-domain.pddl &> logs/psr-small_p37-s67-n6-l2-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 703 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p38-s78-n3-l3-f50.pddl /home/flogo/downward/benchmarks/psr-small/p38-domain.pddl &> logs/psr-small_p38-s78-n3-l3-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 704 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p39-s79-n3-l3-f70.pddl /home/flogo/downward/benchmarks/psr-small/p39-domain.pddl &> logs/psr-small_p39-s79-n3-l3-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 705 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p40-s80-n3-l4-f10.pddl /home/flogo/downward/benchmarks/psr-small/p40-domain.pddl &> logs/psr-small_p40-s80-n3-l4-f10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 706 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p41-s81-n3-l4-f30.pddl /home/flogo/downward/benchmarks/psr-small/p41-domain.pddl &> logs/psr-small_p41-s81-n3-l4-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 707 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p42-s82-n3-l4-f50.pddl /home/flogo/downward/benchmarks/psr-small/p42-domain.pddl &> logs/psr-small_p42-s82-n3-l4-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 708 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p43-s83-n3-l4-f70.pddl /home/flogo/downward/benchmarks/psr-small/p43-domain.pddl &> logs/psr-small_p43-s83-n3-l4-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 709 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p44-s89-n4-l2-f30.pddl /home/flogo/downward/benchmarks/psr-small/p44-domain.pddl &> logs/psr-small_p44-s89-n4-l2-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 710 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p45-s94-n4-l3-f50.pddl /home/flogo/downward/benchmarks/psr-small/p45-domain.pddl &> logs/psr-small_p45-s94-n4-l3-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 711 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p46-s97-n5-l2-f30.pddl /home/flogo/downward/benchmarks/psr-small/p46-domain.pddl &> logs/psr-small_p46-s97-n5-l2-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 712 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p47-s98-n5-l2-f50.pddl /home/flogo/downward/benchmarks/psr-small/p47-domain.pddl &> logs/psr-small_p47-s98-n5-l2-f50_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 713 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p48-s101-n5-l3-f30.pddl /home/flogo/downward/benchmarks/psr-small/p48-domain.pddl &> logs/psr-small_p48-s101-n5-l3-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 714 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p49-s105-n6-l2-f30.pddl /home/flogo/downward/benchmarks/psr-small/p49-domain.pddl &> logs/psr-small_p49-s105-n6-l2-f30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 715 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/psr-small/p50-s107-n6-l2-f70.pddl /home/flogo/downward/benchmarks/psr-small/p50-domain.pddl &> logs/psr-small_p50-s107-n6-l2-f70_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 716 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p01.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p01_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 717 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p02.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p02_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 718 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p03.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p03_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 719 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p04.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p04_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 720 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p05.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p05_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 721 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p06.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p06_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 722 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p07.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p07_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 723 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p08.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p08_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 724 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p09.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p09_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 725 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p10.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 726 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p11.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 727 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p12.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 728 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p13.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 729 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p14.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 730 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p15.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 731 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p16.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 732 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p17.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 733 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p18.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 734 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p19.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 735 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p20.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 736 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p21.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p21_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 737 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p22.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p22_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 738 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p23.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p23_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 739 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p24.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p24_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 740 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p25.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p25_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 741 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p26.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p26_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 742 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p27.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p27_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 743 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p28.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p28_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 744 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p29.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p29_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 745 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p30.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 746 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p31.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p31_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 747 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p32.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p32_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 748 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p33.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p33_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 749 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p34.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p34_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 750 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p35.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p35_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 751 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p36.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p36_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 752 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p37.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p37_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 753 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p38.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p38_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 754 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p39.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p39_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 755 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/rovers/p40.pddl /home/flogo/downward/benchmarks/rovers/domain.pddl &> logs/rovers_p40_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 756 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p01.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p01_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 757 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p02.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p02_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 758 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p03.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p03_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 759 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p04.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p04_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 760 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p05.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p05_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 761 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p06.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p06_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 762 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p07.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p07_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 763 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p08.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p08_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 764 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p09.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p09_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 765 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p10.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 766 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p11.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 767 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p12.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 768 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p13.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 769 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p14.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 770 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p15.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 771 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p16.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 772 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p17.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 773 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p18.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 774 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p19.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 775 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p20.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 776 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p21.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p21_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 777 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p22.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p22_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 778 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p23.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p23_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 779 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p24.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p24_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 780 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p25.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p25_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 781 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p26.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p26_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 782 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p27.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p27_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 783 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p28.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p28_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 784 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p29.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p29_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 785 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/tpp/p30.pddl /home/flogo/downward/benchmarks/tpp/domain.pddl &> logs/tpp_p30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 786 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p01.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p01.pddl &> logs/trucks-strips_p01_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 787 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p02.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p02.pddl &> logs/trucks-strips_p02_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 788 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p03.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p03.pddl &> logs/trucks-strips_p03_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 789 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p04.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p04.pddl &> logs/trucks-strips_p04_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 790 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p05.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p05.pddl &> logs/trucks-strips_p05_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 791 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p06.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p06.pddl &> logs/trucks-strips_p06_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 792 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p07.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p07.pddl &> logs/trucks-strips_p07_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 793 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p08.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p08.pddl &> logs/trucks-strips_p08_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 794 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p09.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p09.pddl &> logs/trucks-strips_p09_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 795 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p10.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p10.pddl &> logs/trucks-strips_p10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 796 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p11.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p11.pddl &> logs/trucks-strips_p11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 797 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p12.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p12.pddl &> logs/trucks-strips_p12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 798 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p13.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p13.pddl &> logs/trucks-strips_p13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 799 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p14.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p14.pddl &> logs/trucks-strips_p14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 800 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p15.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p15.pddl &> logs/trucks-strips_p15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 801 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p16.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p16.pddl &> logs/trucks-strips_p16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 802 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p17.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p17.pddl &> logs/trucks-strips_p17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 803 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p18.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p18.pddl &> logs/trucks-strips_p18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 804 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p19.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p19.pddl &> logs/trucks-strips_p19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 805 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p20.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p20.pddl &> logs/trucks-strips_p20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 806 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p21.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p21.pddl &> logs/trucks-strips_p21_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 807 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p22.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p22.pddl &> logs/trucks-strips_p22_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 808 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p23.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p23.pddl &> logs/trucks-strips_p23_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 809 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p24.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p24.pddl &> logs/trucks-strips_p24_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 810 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p25.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p25.pddl &> logs/trucks-strips_p25_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 811 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p26.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p26.pddl &> logs/trucks-strips_p26_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 812 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p27.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p27.pddl &> logs/trucks-strips_p27_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 813 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p28.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p28.pddl &> logs/trucks-strips_p28_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 814 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p29.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p29.pddl &> logs/trucks-strips_p29_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 815 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/trucks-strips/p30.pddl /home/flogo/downward/benchmarks/trucks-strips/domain_p30.pddl &> logs/trucks-strips_p30_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 816 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile1 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile1_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 817 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile10 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile10_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 818 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile11 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile11_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 819 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile12 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile12_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 820 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile13 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile13_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 821 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile14 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile14_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 822 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile15 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile15_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 823 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile16 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile16_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 824 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile17 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile17_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 825 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile18 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile18_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 826 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile19 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile19_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 827 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile2 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile2_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 828 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile20 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile20_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 829 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile3 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile3_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 830 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile4 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile4_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 831 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile5 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile5_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 832 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile6 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile6_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 833 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile7 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile7_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 834 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile8 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile8_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 835 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  /home/flogo/downward/benchmarks/zenotravel/pfile9 /home/flogo/downward/benchmarks/zenotravel/domain.pddl &> logs/zenotravel_pfile9_$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
