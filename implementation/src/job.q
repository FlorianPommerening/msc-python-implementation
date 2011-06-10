#! /bin/bash
#$ -S /bin/bash
#$ -m n
#$ -cwd
#$ -e log 
#$ -o log
#$ -l h_cpu=0:30:0
#$ -l h_vmem=1G
#$ -q opteron_core.q
#$ -t 1-835

if [ 1 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p01-airport1-p1.pddl ../../../downward/benchmarks/airport/p01-domain.pddl &> lmcut-test/airport-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 2 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p02-airport1-p1.pddl ../../../downward/benchmarks/airport/p02-domain.pddl &> lmcut-test/airport-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 3 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p03-airport1-p2.pddl ../../../downward/benchmarks/airport/p03-domain.pddl &> lmcut-test/airport-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 4 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p04-airport2-p1.pddl ../../../downward/benchmarks/airport/p04-domain.pddl &> lmcut-test/airport-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 5 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p05-airport2-p1.pddl ../../../downward/benchmarks/airport/p05-domain.pddl &> lmcut-test/airport-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 6 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p06-airport2-p2.pddl ../../../downward/benchmarks/airport/p06-domain.pddl &> lmcut-test/airport-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 7 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p07-airport2-p2.pddl ../../../downward/benchmarks/airport/p07-domain.pddl &> lmcut-test/airport-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 8 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p08-airport2-p3.pddl ../../../downward/benchmarks/airport/p08-domain.pddl &> lmcut-test/airport-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 9 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p09-airport2-p4.pddl ../../../downward/benchmarks/airport/p09-domain.pddl &> lmcut-test/airport-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 10 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p10-airport3-p1.pddl ../../../downward/benchmarks/airport/p10-domain.pddl &> lmcut-test/airport-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 11 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p11-airport3-p1.pddl ../../../downward/benchmarks/airport/p11-domain.pddl &> lmcut-test/airport-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 12 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p12-airport3-p2.pddl ../../../downward/benchmarks/airport/p12-domain.pddl &> lmcut-test/airport-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 13 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p13-airport3-p2.pddl ../../../downward/benchmarks/airport/p13-domain.pddl &> lmcut-test/airport-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 14 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p14-airport3-p3.pddl ../../../downward/benchmarks/airport/p14-domain.pddl &> lmcut-test/airport-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 15 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p15-airport3-p3.pddl ../../../downward/benchmarks/airport/p15-domain.pddl &> lmcut-test/airport-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 16 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p16-airport3-p4.pddl ../../../downward/benchmarks/airport/p16-domain.pddl &> lmcut-test/airport-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 17 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p17-airport3-p5.pddl ../../../downward/benchmarks/airport/p17-domain.pddl &> lmcut-test/airport-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 18 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p18-airport3-p6.pddl ../../../downward/benchmarks/airport/p18-domain.pddl &> lmcut-test/airport-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 19 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p19-airport3-p6.pddl ../../../downward/benchmarks/airport/p19-domain.pddl &> lmcut-test/airport-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 20 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p20-airport3-p7.pddl ../../../downward/benchmarks/airport/p20-domain.pddl &> lmcut-test/airport-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 21 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p21-airport4halfMUC-p2.pddl ../../../downward/benchmarks/airport/p21-domain.pddl &> lmcut-test/airport-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 22 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p22-airport4halfMUC-p3.pddl ../../../downward/benchmarks/airport/p22-domain.pddl &> lmcut-test/airport-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 23 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p23-airport4halfMUC-p4.pddl ../../../downward/benchmarks/airport/p23-domain.pddl &> lmcut-test/airport-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 24 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p24-airport4halfMUC-p4.pddl ../../../downward/benchmarks/airport/p24-domain.pddl &> lmcut-test/airport-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 25 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p25-airport4halfMUC-p5.pddl ../../../downward/benchmarks/airport/p25-domain.pddl &> lmcut-test/airport-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 26 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p26-airport4halfMUC-p6.pddl ../../../downward/benchmarks/airport/p26-domain.pddl &> lmcut-test/airport-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 27 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p27-airport4halfMUC-p6.pddl ../../../downward/benchmarks/airport/p27-domain.pddl &> lmcut-test/airport-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 28 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p28-airport4halfMUC-p7.pddl ../../../downward/benchmarks/airport/p28-domain.pddl &> lmcut-test/airport-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 29 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p29-airport4halfMUC-p8.pddl ../../../downward/benchmarks/airport/p29-domain.pddl &> lmcut-test/airport-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 30 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p30-airport4halfMUC-p8.pddl ../../../downward/benchmarks/airport/p30-domain.pddl &> lmcut-test/airport-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 31 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p31-airport4halfMUC-p9.pddl ../../../downward/benchmarks/airport/p31-domain.pddl &> lmcut-test/airport-030-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 32 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p32-airport4halfMUC-p10.pddl ../../../downward/benchmarks/airport/p32-domain.pddl &> lmcut-test/airport-031-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 33 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p33-airport4halfMUC-p10.pddl ../../../downward/benchmarks/airport/p33-domain.pddl &> lmcut-test/airport-032-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 34 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p34-airport4halfMUC-p11.pddl ../../../downward/benchmarks/airport/p34-domain.pddl &> lmcut-test/airport-033-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 35 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p35-airport4halfMUC-p12.pddl ../../../downward/benchmarks/airport/p35-domain.pddl &> lmcut-test/airport-034-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 36 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p36-airport5MUC-p2.pddl ../../../downward/benchmarks/airport/p36-domain.pddl &> lmcut-test/airport-035-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 37 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p37-airport5MUC-p3.pddl ../../../downward/benchmarks/airport/p37-domain.pddl &> lmcut-test/airport-036-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 38 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p38-airport5MUC-p3.pddl ../../../downward/benchmarks/airport/p38-domain.pddl &> lmcut-test/airport-037-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 39 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p39-airport5MUC-p4.pddl ../../../downward/benchmarks/airport/p39-domain.pddl &> lmcut-test/airport-038-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 40 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p40-airport5MUC-p4.pddl ../../../downward/benchmarks/airport/p40-domain.pddl &> lmcut-test/airport-039-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 41 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p41-airport5MUC-p4.pddl ../../../downward/benchmarks/airport/p41-domain.pddl &> lmcut-test/airport-040-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 42 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p42-airport5MUC-p5.pddl ../../../downward/benchmarks/airport/p42-domain.pddl &> lmcut-test/airport-041-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 43 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p43-airport5MUC-p5.pddl ../../../downward/benchmarks/airport/p43-domain.pddl &> lmcut-test/airport-042-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 44 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p44-airport5MUC-p5.pddl ../../../downward/benchmarks/airport/p44-domain.pddl &> lmcut-test/airport-043-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 45 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p45-airport5MUC-p6.pddl ../../../downward/benchmarks/airport/p45-domain.pddl &> lmcut-test/airport-044-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 46 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p46-airport5MUC-p6.pddl ../../../downward/benchmarks/airport/p46-domain.pddl &> lmcut-test/airport-045-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 47 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p47-airport5MUC-p8.pddl ../../../downward/benchmarks/airport/p47-domain.pddl &> lmcut-test/airport-046-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 48 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p48-airport5MUC-p9.pddl ../../../downward/benchmarks/airport/p48-domain.pddl &> lmcut-test/airport-047-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 49 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p49-airport5MUC-p10.pddl ../../../downward/benchmarks/airport/p49-domain.pddl &> lmcut-test/airport-048-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 50 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/airport/p50-airport5MUC-p15.pddl ../../../downward/benchmarks/airport/p50-domain.pddl &> lmcut-test/airport-049-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 51 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-4-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 52 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-4-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 53 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-4-2.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 54 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-5-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 55 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-5-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 56 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-5-2.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 57 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-6-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 58 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-6-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 59 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-6-2.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 60 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-7-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 61 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-7-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 62 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-7-2.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 63 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-8-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 64 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-8-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 65 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-8-2.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 66 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-9-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 67 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-9-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 68 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-9-2.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 69 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-10-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 70 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-10-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 71 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-10-2.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 72 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-11-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 73 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-11-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 74 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-11-2.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 75 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-12-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 76 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-12-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 77 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-13-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 78 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-13-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 79 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-14-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 80 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-14-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 81 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-15-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-030-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 82 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-15-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-031-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 83 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-16-1.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-032-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 84 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-16-2.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-033-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 85 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/blocks/probBLOCKS-17-0.pddl ../../../downward/benchmarks/blocks/domain.pddl &> lmcut-test/blocks-034-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 86 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile1 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 87 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile2 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 88 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile3 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 89 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile4 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 90 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile5 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 91 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile6 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 92 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile7 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 93 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile8 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 94 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile9 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 95 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile10 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 96 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile11 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 97 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile12 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 98 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile13 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 99 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile14 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 100 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile15 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 101 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile16 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 102 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile17 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 103 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile18 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 104 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile19 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 105 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile20 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 106 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile21 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 107 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/depot/pfile22 ../../../downward/benchmarks/depot/domain.pddl &> lmcut-test/depot-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 108 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile1 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 109 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile2 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 110 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile3 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 111 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile4 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 112 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile5 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 113 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile6 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 114 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile7 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 115 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile8 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 116 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile9 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 117 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile10 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 118 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile11 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 119 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile12 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 120 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile13 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 121 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile14 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 122 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile15 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 123 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile16 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 124 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile17 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 125 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile18 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 126 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile19 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 127 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/driverlog/pfile20 ../../../downward/benchmarks/driverlog/domain.pddl &> lmcut-test/driverlog-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 128 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile1 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 129 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile2 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 130 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-2-1.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 131 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-2-2.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 132 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-2-3.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 133 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-2-4.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 134 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-2-5.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 135 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile3 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 136 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-3-1.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 137 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-3-2.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 138 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-3-3.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 139 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-3-4.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 140 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-3-5.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 141 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile4 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 142 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-4-1.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 143 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-4-2.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 144 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-4-3.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 145 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-4-4.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 146 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-4-5.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 147 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile5 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 148 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-5-1.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 149 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-5-2.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 150 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-5-3.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 151 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-5-4.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 152 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-5-5.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 153 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile6 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 154 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-6-1.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 155 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-6-2.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 156 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-6-3.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 157 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-6-4.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 158 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-6-5.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-030-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 159 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile7 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-031-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 160 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-7-1.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-032-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 161 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-7-2.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-033-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 162 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-7-3.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-034-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 163 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-7-4.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-035-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 164 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-7-5.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-036-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 165 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile8 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-037-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 166 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-8-1.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-038-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 167 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-8-2.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-039-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 168 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-8-3.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-040-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 169 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-8-4.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-041-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 170 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-8-5.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-042-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 171 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile9 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-043-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 172 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-9-1.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-044-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 173 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-9-2.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-045-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 174 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-9-3.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-046-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 175 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-9-4.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-047-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 176 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-9-5.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-048-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 177 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile10 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-049-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 178 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-10-1.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-050-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 179 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-10-2.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-051-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 180 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-10-3.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-052-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 181 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-10-4.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-053-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 182 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-10-5.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-054-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 183 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile11 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-055-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 184 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-11-1.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-056-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 185 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-11-2.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-057-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 186 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-11-3.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-058-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 187 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-11-4.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-059-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 188 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-11-5.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-060-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 189 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile12 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-061-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 190 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-12-1.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-062-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 191 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-12-2.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-063-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 192 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-12-3.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-064-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 193 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-12-4.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-065-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 194 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-12-5.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-066-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 195 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile13 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-067-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 196 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-13-1.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-068-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 197 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-13-2.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-069-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 198 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-13-3.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-070-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 199 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-13-4.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-071-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 200 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/probfreecell-13-5.pddl ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-072-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 201 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile14 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-073-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 202 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile15 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-074-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 203 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile16 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-075-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 204 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile17 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-076-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 205 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile18 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-077-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 206 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile19 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-078-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 207 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/freecell/pfile20 ../../../downward/benchmarks/freecell/domain.pddl &> lmcut-test/freecell-079-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 208 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob01.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 209 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob02.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 210 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob03.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 211 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob04.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 212 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob05.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 213 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob06.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 214 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob07.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 215 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob08.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 216 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob09.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 217 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob10.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 218 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob11.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 219 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob12.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 220 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob13.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 221 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob14.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 222 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob15.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 223 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob16.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 224 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob17.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 225 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob18.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 226 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob19.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 227 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/gripper/prob20.pddl ../../../downward/benchmarks/gripper/domain.pddl &> lmcut-test/gripper-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 228 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-4-0.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 229 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-4-1.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 230 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-4-2.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 231 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-5-0.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 232 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-5-1.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 233 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-5-2.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 234 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-6-0.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 235 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-6-1.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 236 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-6-2.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 237 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-6-9.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 238 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-7-0.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 239 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-7-1.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 240 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-8-0.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 241 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-8-1.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 242 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-9-0.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 243 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-9-1.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 244 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-10-0.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 245 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-10-1.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 246 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-11-0.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 247 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-11-1.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 248 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-12-0.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 249 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-12-1.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 250 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-13-0.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 251 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-13-1.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 252 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-14-0.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 253 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-14-1.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 254 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-15-0.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 255 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics00/probLOGISTICS-15-1.pddl ../../../downward/benchmarks/logistics00/domain.pddl &> lmcut-test/logistics00-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 256 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob01.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 257 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob02.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 258 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob03.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 259 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob04.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 260 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob05.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 261 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob06.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 262 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob07.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 263 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob08.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 264 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob09.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 265 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob10.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 266 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob11.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 267 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob12.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 268 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob13.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 269 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob14.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 270 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob15.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 271 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob16.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 272 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob17.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 273 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob18.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 274 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob19.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 275 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob20.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 276 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob21.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 277 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob22.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 278 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob23.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 279 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob24.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 280 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob25.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 281 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob26.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 282 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob27.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 283 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob28.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 284 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob29.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 285 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob30.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 286 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob31.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-030-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 287 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob32.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-031-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 288 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob33.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-032-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 289 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob34.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-033-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 290 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/logistics98/prob35.pddl ../../../downward/benchmarks/logistics98/domain.pddl &> lmcut-test/logistics98-034-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 291 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s1-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 292 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s1-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 293 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s1-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 294 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s1-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 295 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s1-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 296 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s2-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 297 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s2-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 298 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s2-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 299 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s2-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 300 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s2-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 301 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s3-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 302 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s3-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 303 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s3-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 304 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s3-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 305 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s3-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 306 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s4-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 307 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s4-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 308 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s4-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 309 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s4-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 310 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s4-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 311 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s5-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 312 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s5-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 313 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s5-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 314 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s5-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 315 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s5-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 316 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s6-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 317 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s6-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 318 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s6-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 319 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s6-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 320 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s6-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 321 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s7-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-030-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 322 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s7-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-031-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 323 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s7-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-032-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 324 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s7-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-033-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 325 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s7-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-034-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 326 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s8-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-035-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 327 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s8-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-036-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 328 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s8-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-037-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 329 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s8-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-038-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 330 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s8-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-039-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 331 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s9-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-040-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 332 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s9-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-041-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 333 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s9-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-042-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 334 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s9-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-043-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 335 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s9-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-044-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 336 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s10-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-045-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 337 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s10-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-046-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 338 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s10-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-047-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 339 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s10-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-048-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 340 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s10-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-049-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 341 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s11-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-050-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 342 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s11-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-051-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 343 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s11-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-052-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 344 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s11-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-053-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 345 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s11-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-054-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 346 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s12-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-055-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 347 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s12-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-056-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 348 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s12-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-057-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 349 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s12-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-058-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 350 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s12-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-059-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 351 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s13-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-060-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 352 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s13-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-061-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 353 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s13-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-062-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 354 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s13-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-063-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 355 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s13-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-064-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 356 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s14-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-065-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 357 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s14-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-066-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 358 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s14-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-067-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 359 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s14-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-068-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 360 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s14-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-069-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 361 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s15-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-070-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 362 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s15-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-071-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 363 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s15-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-072-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 364 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s15-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-073-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 365 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s15-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-074-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 366 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s16-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-075-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 367 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s16-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-076-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 368 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s16-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-077-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 369 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s16-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-078-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 370 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s16-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-079-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 371 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s17-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-080-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 372 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s17-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-081-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 373 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s17-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-082-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 374 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s17-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-083-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 375 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s17-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-084-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 376 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s18-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-085-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 377 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s18-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-086-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 378 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s18-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-087-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 379 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s18-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-088-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 380 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s18-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-089-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 381 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s19-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-090-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 382 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s19-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-091-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 383 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s19-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-092-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 384 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s19-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-093-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 385 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s19-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-094-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 386 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s20-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-095-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 387 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s20-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-096-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 388 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s20-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-097-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 389 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s20-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-098-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 390 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s20-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-099-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 391 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s21-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-100-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 392 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s21-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-101-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 393 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s21-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-102-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 394 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s21-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-103-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 395 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s21-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-104-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 396 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s22-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-105-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 397 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s22-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-106-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 398 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s22-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-107-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 399 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s22-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-108-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 400 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s22-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-109-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 401 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s23-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-110-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 402 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s23-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-111-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 403 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s23-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-112-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 404 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s23-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-113-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 405 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s23-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-114-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 406 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s24-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-115-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 407 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s24-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-116-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 408 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s24-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-117-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 409 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s24-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-118-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 410 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s24-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-119-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 411 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s25-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-120-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 412 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s25-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-121-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 413 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s25-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-122-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 414 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s25-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-123-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 415 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s25-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-124-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 416 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s26-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-125-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 417 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s26-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-126-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 418 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s26-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-127-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 419 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s26-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-128-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 420 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s26-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-129-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 421 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s27-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-130-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 422 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s27-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-131-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 423 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s27-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-132-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 424 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s27-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-133-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 425 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s27-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-134-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 426 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s28-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-135-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 427 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s28-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-136-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 428 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s28-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-137-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 429 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s28-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-138-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 430 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s28-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-139-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 431 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s29-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-140-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 432 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s29-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-141-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 433 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s29-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-142-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 434 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s29-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-143-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 435 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s29-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-144-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 436 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s30-0.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-145-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 437 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s30-1.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-146-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 438 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s30-2.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-147-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 439 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s30-3.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-148-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 440 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/miconic/s30-4.pddl ../../../downward/benchmarks/miconic/domain.pddl &> lmcut-test/miconic-149-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 441 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob01.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 442 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob02.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 443 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob03.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 444 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob04.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 445 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob05.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 446 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob06.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 447 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob07.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 448 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob08.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 449 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob09.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 450 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob10.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 451 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob11.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 452 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob12.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 453 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob13.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 454 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob14.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 455 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob15.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 456 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob16.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 457 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob17.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 458 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob18.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 459 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob19.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 460 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob20.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 461 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob21.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 462 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob22.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 463 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob23.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 464 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob24.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 465 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob25.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 466 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob26.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 467 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob27.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 468 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob28.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 469 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob29.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 470 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob30.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 471 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob31.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-030-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 472 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob32.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-031-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 473 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob33.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-032-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 474 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob34.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-033-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 475 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mprime/prob35.pddl ../../../downward/benchmarks/mprime/domain.pddl &> lmcut-test/mprime-034-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 476 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob01.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 477 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob02.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 478 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob03.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 479 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob04.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 480 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob05.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 481 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob06.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 482 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob07.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 483 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob08.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 484 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob09.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 485 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob10.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 486 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob11.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 487 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob12.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 488 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob13.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 489 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob14.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 490 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob15.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 491 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob16.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 492 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob17.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 493 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob18.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 494 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob19.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 495 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob20.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 496 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob21.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 497 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob22.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 498 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob23.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 499 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob24.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 500 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob25.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 501 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob26.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 502 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob27.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 503 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob28.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 504 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob29.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 505 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/mystery/prob30.pddl ../../../downward/benchmarks/mystery/domain.pddl &> lmcut-test/mystery-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 506 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p01.pddl ../../../downward/benchmarks/openstacks-strips/domain_p01.pddl &> lmcut-test/openstacks-strips-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 507 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p02.pddl ../../../downward/benchmarks/openstacks-strips/domain_p02.pddl &> lmcut-test/openstacks-strips-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 508 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p03.pddl ../../../downward/benchmarks/openstacks-strips/domain_p03.pddl &> lmcut-test/openstacks-strips-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 509 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p04.pddl ../../../downward/benchmarks/openstacks-strips/domain_p04.pddl &> lmcut-test/openstacks-strips-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 510 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p05.pddl ../../../downward/benchmarks/openstacks-strips/domain_p05.pddl &> lmcut-test/openstacks-strips-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 511 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p06.pddl ../../../downward/benchmarks/openstacks-strips/domain_p06.pddl &> lmcut-test/openstacks-strips-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 512 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p07.pddl ../../../downward/benchmarks/openstacks-strips/domain_p07.pddl &> lmcut-test/openstacks-strips-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 513 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p08.pddl ../../../downward/benchmarks/openstacks-strips/domain_p08.pddl &> lmcut-test/openstacks-strips-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 514 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p09.pddl ../../../downward/benchmarks/openstacks-strips/domain_p09.pddl &> lmcut-test/openstacks-strips-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 515 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p10.pddl ../../../downward/benchmarks/openstacks-strips/domain_p10.pddl &> lmcut-test/openstacks-strips-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 516 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p11.pddl ../../../downward/benchmarks/openstacks-strips/domain_p11.pddl &> lmcut-test/openstacks-strips-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 517 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p12.pddl ../../../downward/benchmarks/openstacks-strips/domain_p12.pddl &> lmcut-test/openstacks-strips-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 518 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p13.pddl ../../../downward/benchmarks/openstacks-strips/domain_p13.pddl &> lmcut-test/openstacks-strips-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 519 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p14.pddl ../../../downward/benchmarks/openstacks-strips/domain_p14.pddl &> lmcut-test/openstacks-strips-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 520 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p15.pddl ../../../downward/benchmarks/openstacks-strips/domain_p15.pddl &> lmcut-test/openstacks-strips-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 521 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p16.pddl ../../../downward/benchmarks/openstacks-strips/domain_p16.pddl &> lmcut-test/openstacks-strips-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 522 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p17.pddl ../../../downward/benchmarks/openstacks-strips/domain_p17.pddl &> lmcut-test/openstacks-strips-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 523 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p18.pddl ../../../downward/benchmarks/openstacks-strips/domain_p18.pddl &> lmcut-test/openstacks-strips-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 524 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p19.pddl ../../../downward/benchmarks/openstacks-strips/domain_p19.pddl &> lmcut-test/openstacks-strips-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 525 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p20.pddl ../../../downward/benchmarks/openstacks-strips/domain_p20.pddl &> lmcut-test/openstacks-strips-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 526 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p21.pddl ../../../downward/benchmarks/openstacks-strips/domain_p21.pddl &> lmcut-test/openstacks-strips-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 527 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p22.pddl ../../../downward/benchmarks/openstacks-strips/domain_p22.pddl &> lmcut-test/openstacks-strips-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 528 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p23.pddl ../../../downward/benchmarks/openstacks-strips/domain_p23.pddl &> lmcut-test/openstacks-strips-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 529 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p24.pddl ../../../downward/benchmarks/openstacks-strips/domain_p24.pddl &> lmcut-test/openstacks-strips-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 530 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p25.pddl ../../../downward/benchmarks/openstacks-strips/domain_p25.pddl &> lmcut-test/openstacks-strips-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 531 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p26.pddl ../../../downward/benchmarks/openstacks-strips/domain_p26.pddl &> lmcut-test/openstacks-strips-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 532 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p27.pddl ../../../downward/benchmarks/openstacks-strips/domain_p27.pddl &> lmcut-test/openstacks-strips-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 533 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p28.pddl ../../../downward/benchmarks/openstacks-strips/domain_p28.pddl &> lmcut-test/openstacks-strips-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 534 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p29.pddl ../../../downward/benchmarks/openstacks-strips/domain_p29.pddl &> lmcut-test/openstacks-strips-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 535 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/openstacks-strips/p30.pddl ../../../downward/benchmarks/openstacks-strips/domain_p30.pddl &> lmcut-test/openstacks-strips-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 536 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p01.pddl ../../../downward/benchmarks/pathways-noneg/domain_p01.pddl &> lmcut-test/pathways-noneg-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 537 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p02.pddl ../../../downward/benchmarks/pathways-noneg/domain_p02.pddl &> lmcut-test/pathways-noneg-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 538 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p03.pddl ../../../downward/benchmarks/pathways-noneg/domain_p03.pddl &> lmcut-test/pathways-noneg-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 539 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p04.pddl ../../../downward/benchmarks/pathways-noneg/domain_p04.pddl &> lmcut-test/pathways-noneg-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 540 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p05.pddl ../../../downward/benchmarks/pathways-noneg/domain_p05.pddl &> lmcut-test/pathways-noneg-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 541 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p06.pddl ../../../downward/benchmarks/pathways-noneg/domain_p06.pddl &> lmcut-test/pathways-noneg-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 542 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p07.pddl ../../../downward/benchmarks/pathways-noneg/domain_p07.pddl &> lmcut-test/pathways-noneg-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 543 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p08.pddl ../../../downward/benchmarks/pathways-noneg/domain_p08.pddl &> lmcut-test/pathways-noneg-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 544 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p09.pddl ../../../downward/benchmarks/pathways-noneg/domain_p09.pddl &> lmcut-test/pathways-noneg-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 545 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p10.pddl ../../../downward/benchmarks/pathways-noneg/domain_p10.pddl &> lmcut-test/pathways-noneg-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 546 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p11.pddl ../../../downward/benchmarks/pathways-noneg/domain_p11.pddl &> lmcut-test/pathways-noneg-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 547 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p12.pddl ../../../downward/benchmarks/pathways-noneg/domain_p12.pddl &> lmcut-test/pathways-noneg-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 548 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p13.pddl ../../../downward/benchmarks/pathways-noneg/domain_p13.pddl &> lmcut-test/pathways-noneg-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 549 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p14.pddl ../../../downward/benchmarks/pathways-noneg/domain_p14.pddl &> lmcut-test/pathways-noneg-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 550 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p15.pddl ../../../downward/benchmarks/pathways-noneg/domain_p15.pddl &> lmcut-test/pathways-noneg-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 551 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p16.pddl ../../../downward/benchmarks/pathways-noneg/domain_p16.pddl &> lmcut-test/pathways-noneg-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 552 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p17.pddl ../../../downward/benchmarks/pathways-noneg/domain_p17.pddl &> lmcut-test/pathways-noneg-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 553 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p18.pddl ../../../downward/benchmarks/pathways-noneg/domain_p18.pddl &> lmcut-test/pathways-noneg-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 554 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p19.pddl ../../../downward/benchmarks/pathways-noneg/domain_p19.pddl &> lmcut-test/pathways-noneg-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 555 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p20.pddl ../../../downward/benchmarks/pathways-noneg/domain_p20.pddl &> lmcut-test/pathways-noneg-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 556 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p21.pddl ../../../downward/benchmarks/pathways-noneg/domain_p21.pddl &> lmcut-test/pathways-noneg-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 557 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p22.pddl ../../../downward/benchmarks/pathways-noneg/domain_p22.pddl &> lmcut-test/pathways-noneg-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 558 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p23.pddl ../../../downward/benchmarks/pathways-noneg/domain_p23.pddl &> lmcut-test/pathways-noneg-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 559 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p24.pddl ../../../downward/benchmarks/pathways-noneg/domain_p24.pddl &> lmcut-test/pathways-noneg-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 560 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p25.pddl ../../../downward/benchmarks/pathways-noneg/domain_p25.pddl &> lmcut-test/pathways-noneg-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 561 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p26.pddl ../../../downward/benchmarks/pathways-noneg/domain_p26.pddl &> lmcut-test/pathways-noneg-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 562 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p27.pddl ../../../downward/benchmarks/pathways-noneg/domain_p27.pddl &> lmcut-test/pathways-noneg-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 563 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p28.pddl ../../../downward/benchmarks/pathways-noneg/domain_p28.pddl &> lmcut-test/pathways-noneg-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 564 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p29.pddl ../../../downward/benchmarks/pathways-noneg/domain_p29.pddl &> lmcut-test/pathways-noneg-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 565 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pathways-noneg/p30.pddl ../../../downward/benchmarks/pathways-noneg/domain_p30.pddl &> lmcut-test/pathways-noneg-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 566 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p01-net1-b6-g2.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 567 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p02-net1-b6-g4.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 568 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p03-net1-b8-g3.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 569 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p04-net1-b8-g5.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 570 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p05-net1-b10-g4.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 571 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p06-net1-b10-g6.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 572 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p07-net1-b12-g5.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 573 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p08-net1-b12-g7.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 574 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p09-net1-b14-g6.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 575 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p10-net1-b14-g8.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 576 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p11-net2-b10-g2.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 577 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p12-net2-b10-g4.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 578 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p13-net2-b12-g3.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 579 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p14-net2-b12-g5.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 580 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p15-net2-b14-g4.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 581 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p16-net2-b14-g6.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 582 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p17-net2-b16-g5.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 583 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p18-net2-b16-g7.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 584 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p19-net2-b18-g6.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 585 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p20-net2-b18-g8.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 586 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p21-net3-b12-g2.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 587 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p22-net3-b12-g4.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 588 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p23-net3-b14-g3.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 589 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p24-net3-b14-g5.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 590 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p25-net3-b16-g5.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 591 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p26-net3-b16-g7.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 592 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p27-net3-b18-g6.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 593 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p28-net3-b18-g7.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 594 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p29-net3-b20-g6.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 595 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p30-net3-b20-g8.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 596 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p31-net4-b14-g3.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-030-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 597 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p32-net4-b14-g5.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-031-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 598 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p33-net4-b16-g5.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-032-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 599 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p34-net4-b16-g6.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-033-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 600 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p35-net4-b18-g4.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-034-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 601 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p36-net4-b18-g6.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-035-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 602 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p37-net4-b20-g5.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-036-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 603 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p38-net4-b20-g7.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-037-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 604 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p39-net4-b22-g7.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-038-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 605 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p40-net4-b22-g8.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-039-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 606 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p41-net5-b22-g2.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-040-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 607 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p42-net5-b22-g4.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-041-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 608 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p43-net5-b24-g3.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-042-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 609 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p44-net5-b24-g5.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-043-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 610 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p45-net5-b26-g4.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-044-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 611 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p46-net5-b26-g6.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-045-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 612 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p47-net5-b28-g5.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-046-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 613 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p48-net5-b28-g7.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-047-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 614 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p49-net5-b30-g6.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-048-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 615 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-notankage/p50-net5-b30-g8.pddl ../../../downward/benchmarks/pipesworld-notankage/domain.pddl &> lmcut-test/pipesworld-notankage-049-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 616 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p01-net1-b6-g2-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 617 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p02-net1-b6-g4-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 618 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p03-net1-b8-g3-t80.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 619 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p04-net1-b8-g5-t80.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 620 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p05-net1-b10-g4-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 621 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p06-net1-b10-g6-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 622 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p07-net1-b12-g5-t80.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 623 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p08-net1-b12-g7-t80.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 624 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p09-net1-b14-g6-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 625 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p10-net1-b14-g8-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 626 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p11-net2-b10-g2-t30.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 627 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p12-net2-b10-g4-t60.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 628 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p13-net2-b12-g3-t70.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 629 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p14-net2-b12-g5-t30.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 630 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p15-net2-b14-g4-t30.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 631 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p16-net2-b14-g6-t80.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 632 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p17-net2-b16-g5-t20.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 633 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p18-net2-b16-g7-t60.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 634 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p19-net2-b18-g6-t60.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 635 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p20-net2-b18-g8-t90.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 636 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p21-net3-b12-g2-t60.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 637 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p22-net3-b12-g4-t60.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 638 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p23-net3-b14-g3-t60.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 639 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p24-net3-b14-g5-t60.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 640 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p25-net3-b16-g5-t60.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 641 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p26-net3-b16-g7-t70.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 642 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p27-net3-b18-g6-t70.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 643 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p28-net3-b18-g7-t70.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 644 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p29-net3-b20-g6-t70.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 645 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p30-net3-b20-g8-t70.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 646 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p31-net4-b14-g3-t20.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-030-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 647 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p32-net4-b14-g5-t30.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-031-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 648 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p33-net4-b16-g5-t60.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-032-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 649 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p34-net4-b16-g6-t60.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-033-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 650 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p35-net4-b18-g4-t90.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-034-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 651 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p36-net4-b18-g6-t90.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-035-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 652 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p37-net4-b20-g5-t60.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-036-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 653 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p38-net4-b20-g7-t60.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-037-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 654 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p39-net4-b22-g7-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-038-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 655 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p40-net4-b22-g8-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-039-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 656 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p41-net5-b22-g2-t20.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-040-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 657 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p42-net5-b22-g4-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-041-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 658 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p43-net5-b24-g3-t80.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-042-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 659 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p44-net5-b24-g5-t80.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-043-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 660 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p45-net5-b26-g4-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-044-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 661 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p46-net5-b26-g6-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-045-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 662 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p47-net5-b28-g5-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-046-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 663 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p48-net5-b28-g7-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-047-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 664 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p49-net5-b30-g6-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-048-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 665 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/pipesworld-tankage/p50-net5-b30-g8-t50.pddl ../../../downward/benchmarks/pipesworld-tankage/domain.pddl &> lmcut-test/pipesworld-tankage-049-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 666 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p01-s2-n1-l2-f50.pddl ../../../downward/benchmarks/psr-small/p01-domain.pddl &> lmcut-test/psr-small-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 667 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p02-s5-n1-l3-f30.pddl ../../../downward/benchmarks/psr-small/p02-domain.pddl &> lmcut-test/psr-small-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 668 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p03-s7-n1-l3-f70.pddl ../../../downward/benchmarks/psr-small/p03-domain.pddl &> lmcut-test/psr-small-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 669 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p04-s8-n1-l4-f10.pddl ../../../downward/benchmarks/psr-small/p04-domain.pddl &> lmcut-test/psr-small-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 670 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p05-s9-n1-l4-f30.pddl ../../../downward/benchmarks/psr-small/p05-domain.pddl &> lmcut-test/psr-small-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 671 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p06-s10-n1-l4-f50.pddl ../../../downward/benchmarks/psr-small/p06-domain.pddl &> lmcut-test/psr-small-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 672 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p07-s11-n1-l4-f70.pddl ../../../downward/benchmarks/psr-small/p07-domain.pddl &> lmcut-test/psr-small-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 673 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p08-s12-n1-l5-f10.pddl ../../../downward/benchmarks/psr-small/p08-domain.pddl &> lmcut-test/psr-small-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 674 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p09-s13-n1-l5-f30.pddl ../../../downward/benchmarks/psr-small/p09-domain.pddl &> lmcut-test/psr-small-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 675 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p10-s17-n2-l2-f30.pddl ../../../downward/benchmarks/psr-small/p10-domain.pddl &> lmcut-test/psr-small-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 676 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p11-s18-n2-l2-f50.pddl ../../../downward/benchmarks/psr-small/p11-domain.pddl &> lmcut-test/psr-small-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 677 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p12-s21-n2-l3-f30.pddl ../../../downward/benchmarks/psr-small/p12-domain.pddl &> lmcut-test/psr-small-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 678 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p13-s22-n2-l3-f50.pddl ../../../downward/benchmarks/psr-small/p13-domain.pddl &> lmcut-test/psr-small-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 679 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p14-s23-n2-l3-f70.pddl ../../../downward/benchmarks/psr-small/p14-domain.pddl &> lmcut-test/psr-small-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 680 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p15-s24-n2-l4-f10.pddl ../../../downward/benchmarks/psr-small/p15-domain.pddl &> lmcut-test/psr-small-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 681 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p16-s29-n2-l5-f30.pddl ../../../downward/benchmarks/psr-small/p16-domain.pddl &> lmcut-test/psr-small-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 682 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p17-s30-n2-l5-f50.pddl ../../../downward/benchmarks/psr-small/p17-domain.pddl &> lmcut-test/psr-small-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 683 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p18-s31-n2-l5-f70.pddl ../../../downward/benchmarks/psr-small/p18-domain.pddl &> lmcut-test/psr-small-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 684 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p19-s33-n3-l2-f30.pddl ../../../downward/benchmarks/psr-small/p19-domain.pddl &> lmcut-test/psr-small-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 685 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p20-s34-n3-l2-f50.pddl ../../../downward/benchmarks/psr-small/p20-domain.pddl &> lmcut-test/psr-small-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 686 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p21-s35-n3-l2-f70.pddl ../../../downward/benchmarks/psr-small/p21-domain.pddl &> lmcut-test/psr-small-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 687 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p22-s37-n3-l3-f30.pddl ../../../downward/benchmarks/psr-small/p22-domain.pddl &> lmcut-test/psr-small-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 688 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p23-s38-n3-l3-f50.pddl ../../../downward/benchmarks/psr-small/p23-domain.pddl &> lmcut-test/psr-small-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 689 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p24-s39-n3-l3-f70.pddl ../../../downward/benchmarks/psr-small/p24-domain.pddl &> lmcut-test/psr-small-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 690 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p25-s40-n3-l4-f10.pddl ../../../downward/benchmarks/psr-small/p25-domain.pddl &> lmcut-test/psr-small-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 691 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p26-s41-n3-l4-f30.pddl ../../../downward/benchmarks/psr-small/p26-domain.pddl &> lmcut-test/psr-small-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 692 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p27-s42-n3-l4-f50.pddl ../../../downward/benchmarks/psr-small/p27-domain.pddl &> lmcut-test/psr-small-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 693 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p28-s43-n3-l4-f70.pddl ../../../downward/benchmarks/psr-small/p28-domain.pddl &> lmcut-test/psr-small-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 694 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p29-s45-n3-l5-f30.pddl ../../../downward/benchmarks/psr-small/p29-domain.pddl &> lmcut-test/psr-small-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 695 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p30-s46-n3-l5-f50.pddl ../../../downward/benchmarks/psr-small/p30-domain.pddl &> lmcut-test/psr-small-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 696 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p31-s49-n4-l2-f30.pddl ../../../downward/benchmarks/psr-small/p31-domain.pddl &> lmcut-test/psr-small-030-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 697 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p32-s50-n4-l2-f50.pddl ../../../downward/benchmarks/psr-small/p32-domain.pddl &> lmcut-test/psr-small-031-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 698 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p33-s51-n4-l2-f70.pddl ../../../downward/benchmarks/psr-small/p33-domain.pddl &> lmcut-test/psr-small-032-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 699 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p34-s55-n4-l3-f70.pddl ../../../downward/benchmarks/psr-small/p34-domain.pddl &> lmcut-test/psr-small-033-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 700 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p35-s57-n5-l2-f30.pddl ../../../downward/benchmarks/psr-small/p35-domain.pddl &> lmcut-test/psr-small-034-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 701 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p36-s65-n6-l2-f30.pddl ../../../downward/benchmarks/psr-small/p36-domain.pddl &> lmcut-test/psr-small-035-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 702 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p37-s67-n6-l2-f70.pddl ../../../downward/benchmarks/psr-small/p37-domain.pddl &> lmcut-test/psr-small-036-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 703 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p38-s78-n3-l3-f50.pddl ../../../downward/benchmarks/psr-small/p38-domain.pddl &> lmcut-test/psr-small-037-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 704 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p39-s79-n3-l3-f70.pddl ../../../downward/benchmarks/psr-small/p39-domain.pddl &> lmcut-test/psr-small-038-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 705 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p40-s80-n3-l4-f10.pddl ../../../downward/benchmarks/psr-small/p40-domain.pddl &> lmcut-test/psr-small-039-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 706 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p41-s81-n3-l4-f30.pddl ../../../downward/benchmarks/psr-small/p41-domain.pddl &> lmcut-test/psr-small-040-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 707 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p42-s82-n3-l4-f50.pddl ../../../downward/benchmarks/psr-small/p42-domain.pddl &> lmcut-test/psr-small-041-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 708 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p43-s83-n3-l4-f70.pddl ../../../downward/benchmarks/psr-small/p43-domain.pddl &> lmcut-test/psr-small-042-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 709 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p44-s89-n4-l2-f30.pddl ../../../downward/benchmarks/psr-small/p44-domain.pddl &> lmcut-test/psr-small-043-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 710 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p45-s94-n4-l3-f50.pddl ../../../downward/benchmarks/psr-small/p45-domain.pddl &> lmcut-test/psr-small-044-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 711 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p46-s97-n5-l2-f30.pddl ../../../downward/benchmarks/psr-small/p46-domain.pddl &> lmcut-test/psr-small-045-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 712 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p47-s98-n5-l2-f50.pddl ../../../downward/benchmarks/psr-small/p47-domain.pddl &> lmcut-test/psr-small-046-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 713 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p48-s101-n5-l3-f30.pddl ../../../downward/benchmarks/psr-small/p48-domain.pddl &> lmcut-test/psr-small-047-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 714 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p49-s105-n6-l2-f30.pddl ../../../downward/benchmarks/psr-small/p49-domain.pddl &> lmcut-test/psr-small-048-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 715 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/psr-small/p50-s107-n6-l2-f70.pddl ../../../downward/benchmarks/psr-small/p50-domain.pddl &> lmcut-test/psr-small-049-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 716 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p01.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 717 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p02.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 718 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p03.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 719 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p04.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 720 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p05.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 721 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p06.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 722 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p07.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 723 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p08.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 724 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p09.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 725 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p10.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 726 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p11.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 727 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p12.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 728 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p13.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 729 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p14.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 730 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p15.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 731 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p16.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 732 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p17.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 733 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p18.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 734 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p19.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 735 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p20.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 736 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p21.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 737 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p22.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 738 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p23.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 739 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p24.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 740 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p25.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 741 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p26.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 742 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p27.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 743 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p28.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 744 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p29.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 745 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p30.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 746 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p31.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-030-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 747 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p32.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-031-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 748 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p33.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-032-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 749 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p34.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-033-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 750 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p35.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-034-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 751 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p36.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-035-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 752 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p37.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-036-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 753 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p38.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-037-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 754 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p39.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-038-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 755 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/rovers/p40.pddl ../../../downward/benchmarks/rovers/domain.pddl &> lmcut-test/rovers-039-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 756 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p01.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 757 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p02.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 758 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p03.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 759 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p04.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 760 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p05.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 761 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p06.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 762 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p07.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 763 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p08.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 764 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p09.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 765 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p10.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 766 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p11.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 767 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p12.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 768 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p13.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 769 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p14.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 770 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p15.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 771 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p16.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 772 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p17.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 773 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p18.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 774 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p19.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 775 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p20.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 776 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p21.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 777 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p22.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 778 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p23.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 779 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p24.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 780 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p25.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 781 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p26.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 782 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p27.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 783 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p28.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 784 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p29.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 785 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/tpp/p30.pddl ../../../downward/benchmarks/tpp/domain.pddl &> lmcut-test/tpp-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 786 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p01.pddl ../../../downward/benchmarks/trucks-strips/domain_p01.pddl &> lmcut-test/trucks-strips-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 787 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p02.pddl ../../../downward/benchmarks/trucks-strips/domain_p02.pddl &> lmcut-test/trucks-strips-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 788 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p03.pddl ../../../downward/benchmarks/trucks-strips/domain_p03.pddl &> lmcut-test/trucks-strips-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 789 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p04.pddl ../../../downward/benchmarks/trucks-strips/domain_p04.pddl &> lmcut-test/trucks-strips-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 790 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p05.pddl ../../../downward/benchmarks/trucks-strips/domain_p05.pddl &> lmcut-test/trucks-strips-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 791 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p06.pddl ../../../downward/benchmarks/trucks-strips/domain_p06.pddl &> lmcut-test/trucks-strips-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 792 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p07.pddl ../../../downward/benchmarks/trucks-strips/domain_p07.pddl &> lmcut-test/trucks-strips-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 793 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p08.pddl ../../../downward/benchmarks/trucks-strips/domain_p08.pddl &> lmcut-test/trucks-strips-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 794 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p09.pddl ../../../downward/benchmarks/trucks-strips/domain_p09.pddl &> lmcut-test/trucks-strips-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 795 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p10.pddl ../../../downward/benchmarks/trucks-strips/domain_p10.pddl &> lmcut-test/trucks-strips-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 796 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p11.pddl ../../../downward/benchmarks/trucks-strips/domain_p11.pddl &> lmcut-test/trucks-strips-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 797 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p12.pddl ../../../downward/benchmarks/trucks-strips/domain_p12.pddl &> lmcut-test/trucks-strips-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 798 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p13.pddl ../../../downward/benchmarks/trucks-strips/domain_p13.pddl &> lmcut-test/trucks-strips-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 799 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p14.pddl ../../../downward/benchmarks/trucks-strips/domain_p14.pddl &> lmcut-test/trucks-strips-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 800 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p15.pddl ../../../downward/benchmarks/trucks-strips/domain_p15.pddl &> lmcut-test/trucks-strips-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 801 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p16.pddl ../../../downward/benchmarks/trucks-strips/domain_p16.pddl &> lmcut-test/trucks-strips-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 802 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p17.pddl ../../../downward/benchmarks/trucks-strips/domain_p17.pddl &> lmcut-test/trucks-strips-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 803 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p18.pddl ../../../downward/benchmarks/trucks-strips/domain_p18.pddl &> lmcut-test/trucks-strips-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 804 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p19.pddl ../../../downward/benchmarks/trucks-strips/domain_p19.pddl &> lmcut-test/trucks-strips-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 805 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p20.pddl ../../../downward/benchmarks/trucks-strips/domain_p20.pddl &> lmcut-test/trucks-strips-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 806 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p21.pddl ../../../downward/benchmarks/trucks-strips/domain_p21.pddl &> lmcut-test/trucks-strips-020-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 807 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p22.pddl ../../../downward/benchmarks/trucks-strips/domain_p22.pddl &> lmcut-test/trucks-strips-021-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 808 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p23.pddl ../../../downward/benchmarks/trucks-strips/domain_p23.pddl &> lmcut-test/trucks-strips-022-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 809 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p24.pddl ../../../downward/benchmarks/trucks-strips/domain_p24.pddl &> lmcut-test/trucks-strips-023-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 810 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p25.pddl ../../../downward/benchmarks/trucks-strips/domain_p25.pddl &> lmcut-test/trucks-strips-024-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 811 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p26.pddl ../../../downward/benchmarks/trucks-strips/domain_p26.pddl &> lmcut-test/trucks-strips-025-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 812 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p27.pddl ../../../downward/benchmarks/trucks-strips/domain_p27.pddl &> lmcut-test/trucks-strips-026-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 813 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p28.pddl ../../../downward/benchmarks/trucks-strips/domain_p28.pddl &> lmcut-test/trucks-strips-027-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 814 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p29.pddl ../../../downward/benchmarks/trucks-strips/domain_p29.pddl &> lmcut-test/trucks-strips-028-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 815 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/trucks-strips/p30.pddl ../../../downward/benchmarks/trucks-strips/domain_p30.pddl &> lmcut-test/trucks-strips-029-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 816 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile1 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-000-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 817 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile2 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-001-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 818 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile3 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-002-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 819 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile4 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-003-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 820 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile5 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-004-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 821 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile6 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-005-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 822 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile7 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-006-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 823 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile8 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-007-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 824 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile9 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-008-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 825 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile10 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-009-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 826 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile11 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-010-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 827 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile12 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-011-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 828 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile13 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-012-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 829 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile14 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-013-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 830 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile15 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-014-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 831 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile16 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-015-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 832 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile17 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-016-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 833 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile18 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-017-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 834 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile19 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-018-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
if [ 835 -eq $SGE_TASK_ID ]; then
    ./hplusbnb  ../../../downward/benchmarks/zenotravel/pfile20 ../../../downward/benchmarks/zenotravel/domain.pddl &> lmcut-test/zenotravel-019-$JOB_ID.$SGE_TASK_ID.log
    exit $?
fi
