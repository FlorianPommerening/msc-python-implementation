#! /bin/bash
#$ -S /bin/bash
#$ -m n
#$ -cwd
#$ -e log 
#$ -o log
#$ -l h_cpu=00:30:00
#$ -l h_vmem=2G
#$ -l hostname="uni[012][0-9]*|uni3[012]*|ugi[0-9][0-9]*"
#$ -q all.q
#$ -t 1-140

export PATH=~/bin:$PATH

if [ 1 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile01-001
    cd barman-opt11-strips_pfile01-001
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile01-001/output &> ../logs/barman-opt11-strips_pfile01-001
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 2 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile01-002
    cd barman-opt11-strips_pfile01-002
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile01-002/output &> ../logs/barman-opt11-strips_pfile01-002
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 3 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile01-003
    cd barman-opt11-strips_pfile01-003
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile01-003/output &> ../logs/barman-opt11-strips_pfile01-003
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 4 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile01-004
    cd barman-opt11-strips_pfile01-004
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile01-004/output &> ../logs/barman-opt11-strips_pfile01-004
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 5 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile02-005
    cd barman-opt11-strips_pfile02-005
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile02-005/output &> ../logs/barman-opt11-strips_pfile02-005
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 6 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile02-006
    cd barman-opt11-strips_pfile02-006
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile02-006/output &> ../logs/barman-opt11-strips_pfile02-006
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 7 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile02-007
    cd barman-opt11-strips_pfile02-007
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile02-007/output &> ../logs/barman-opt11-strips_pfile02-007
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 8 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile02-008
    cd barman-opt11-strips_pfile02-008
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile02-008/output &> ../logs/barman-opt11-strips_pfile02-008
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 9 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile03-009
    cd barman-opt11-strips_pfile03-009
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile03-009/output &> ../logs/barman-opt11-strips_pfile03-009
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 10 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile03-010
    cd barman-opt11-strips_pfile03-010
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile03-010/output &> ../logs/barman-opt11-strips_pfile03-010
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 11 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile03-011
    cd barman-opt11-strips_pfile03-011
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile03-011/output &> ../logs/barman-opt11-strips_pfile03-011
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 12 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile03-012
    cd barman-opt11-strips_pfile03-012
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile03-012/output &> ../logs/barman-opt11-strips_pfile03-012
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 13 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile04-013
    cd barman-opt11-strips_pfile04-013
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile04-013/output &> ../logs/barman-opt11-strips_pfile04-013
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 14 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile04-014
    cd barman-opt11-strips_pfile04-014
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile04-014/output &> ../logs/barman-opt11-strips_pfile04-014
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 15 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile04-015
    cd barman-opt11-strips_pfile04-015
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile04-015/output &> ../logs/barman-opt11-strips_pfile04-015
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 16 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile04-016
    cd barman-opt11-strips_pfile04-016
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile04-016/output &> ../logs/barman-opt11-strips_pfile04-016
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 17 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile05-017
    cd barman-opt11-strips_pfile05-017
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile05-017/output &> ../logs/barman-opt11-strips_pfile05-017
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 18 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile05-018
    cd barman-opt11-strips_pfile05-018
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile05-018/output &> ../logs/barman-opt11-strips_pfile05-018
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 19 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile05-019
    cd barman-opt11-strips_pfile05-019
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile05-019/output &> ../logs/barman-opt11-strips_pfile05-019
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 20 -eq $SGE_TASK_ID ]; then
    mkdir barman-opt11-strips_pfile05-020
    cd barman-opt11-strips_pfile05-020
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/barman-opt11-strips/pfile05-020/output &> ../logs/barman-opt11-strips_pfile05-020
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 21 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p01
    cd elevators-opt11-strips_p01
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p01/output &> ../logs/elevators-opt11-strips_p01
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 22 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p02
    cd elevators-opt11-strips_p02
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p02/output &> ../logs/elevators-opt11-strips_p02
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 23 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p03
    cd elevators-opt11-strips_p03
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p03/output &> ../logs/elevators-opt11-strips_p03
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 24 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p04
    cd elevators-opt11-strips_p04
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p04/output &> ../logs/elevators-opt11-strips_p04
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 25 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p05
    cd elevators-opt11-strips_p05
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p05/output &> ../logs/elevators-opt11-strips_p05
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 26 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p06
    cd elevators-opt11-strips_p06
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p06/output &> ../logs/elevators-opt11-strips_p06
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 27 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p07
    cd elevators-opt11-strips_p07
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p07/output &> ../logs/elevators-opt11-strips_p07
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 28 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p08
    cd elevators-opt11-strips_p08
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p08/output &> ../logs/elevators-opt11-strips_p08
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 29 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p09
    cd elevators-opt11-strips_p09
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p09/output &> ../logs/elevators-opt11-strips_p09
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 30 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p10
    cd elevators-opt11-strips_p10
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p10/output &> ../logs/elevators-opt11-strips_p10
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 31 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p11
    cd elevators-opt11-strips_p11
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p11/output &> ../logs/elevators-opt11-strips_p11
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 32 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p12
    cd elevators-opt11-strips_p12
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p12/output &> ../logs/elevators-opt11-strips_p12
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 33 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p13
    cd elevators-opt11-strips_p13
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p13/output &> ../logs/elevators-opt11-strips_p13
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 34 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p14
    cd elevators-opt11-strips_p14
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p14/output &> ../logs/elevators-opt11-strips_p14
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 35 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p15
    cd elevators-opt11-strips_p15
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p15/output &> ../logs/elevators-opt11-strips_p15
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 36 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p16
    cd elevators-opt11-strips_p16
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p16/output &> ../logs/elevators-opt11-strips_p16
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 37 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p17
    cd elevators-opt11-strips_p17
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p17/output &> ../logs/elevators-opt11-strips_p17
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 38 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p18
    cd elevators-opt11-strips_p18
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p18/output &> ../logs/elevators-opt11-strips_p18
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 39 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p19
    cd elevators-opt11-strips_p19
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p19/output &> ../logs/elevators-opt11-strips_p19
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 40 -eq $SGE_TASK_ID ]; then
    mkdir elevators-opt11-strips_p20
    cd elevators-opt11-strips_p20
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/elevators-opt11-strips/p20/output &> ../logs/elevators-opt11-strips_p20
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 41 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p01-001
    cd floortile-opt11-strips_opt-p01-001
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p01-001/output &> ../logs/floortile-opt11-strips_opt-p01-001
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 42 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p01-002
    cd floortile-opt11-strips_opt-p01-002
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p01-002/output &> ../logs/floortile-opt11-strips_opt-p01-002
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 43 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p02-003
    cd floortile-opt11-strips_opt-p02-003
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p02-003/output &> ../logs/floortile-opt11-strips_opt-p02-003
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 44 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p02-004
    cd floortile-opt11-strips_opt-p02-004
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p02-004/output &> ../logs/floortile-opt11-strips_opt-p02-004
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 45 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p03-005
    cd floortile-opt11-strips_opt-p03-005
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p03-005/output &> ../logs/floortile-opt11-strips_opt-p03-005
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 46 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p03-006
    cd floortile-opt11-strips_opt-p03-006
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p03-006/output &> ../logs/floortile-opt11-strips_opt-p03-006
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 47 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p04-007
    cd floortile-opt11-strips_opt-p04-007
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p04-007/output &> ../logs/floortile-opt11-strips_opt-p04-007
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 48 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p04-008
    cd floortile-opt11-strips_opt-p04-008
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p04-008/output &> ../logs/floortile-opt11-strips_opt-p04-008
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 49 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p05-009
    cd floortile-opt11-strips_opt-p05-009
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p05-009/output &> ../logs/floortile-opt11-strips_opt-p05-009
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 50 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p05-010
    cd floortile-opt11-strips_opt-p05-010
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p05-010/output &> ../logs/floortile-opt11-strips_opt-p05-010
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 51 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p06-011
    cd floortile-opt11-strips_opt-p06-011
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p06-011/output &> ../logs/floortile-opt11-strips_opt-p06-011
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 52 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p06-012
    cd floortile-opt11-strips_opt-p06-012
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p06-012/output &> ../logs/floortile-opt11-strips_opt-p06-012
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 53 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p07-013
    cd floortile-opt11-strips_opt-p07-013
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p07-013/output &> ../logs/floortile-opt11-strips_opt-p07-013
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 54 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p07-014
    cd floortile-opt11-strips_opt-p07-014
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p07-014/output &> ../logs/floortile-opt11-strips_opt-p07-014
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 55 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p08-015
    cd floortile-opt11-strips_opt-p08-015
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p08-015/output &> ../logs/floortile-opt11-strips_opt-p08-015
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 56 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p08-016
    cd floortile-opt11-strips_opt-p08-016
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p08-016/output &> ../logs/floortile-opt11-strips_opt-p08-016
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 57 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p09-017
    cd floortile-opt11-strips_opt-p09-017
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p09-017/output &> ../logs/floortile-opt11-strips_opt-p09-017
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 58 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p09-018
    cd floortile-opt11-strips_opt-p09-018
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p09-018/output &> ../logs/floortile-opt11-strips_opt-p09-018
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 59 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p10-019
    cd floortile-opt11-strips_opt-p10-019
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p10-019/output &> ../logs/floortile-opt11-strips_opt-p10-019
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 60 -eq $SGE_TASK_ID ]; then
    mkdir floortile-opt11-strips_opt-p10-020
    cd floortile-opt11-strips_opt-p10-020
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/floortile-opt11-strips/opt-p10-020/output &> ../logs/floortile-opt11-strips_opt-p10-020
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 61 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p01
    cd parcprinter-opt11-strips_p01
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p01/output &> ../logs/parcprinter-opt11-strips_p01
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 62 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p02
    cd parcprinter-opt11-strips_p02
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p02/output &> ../logs/parcprinter-opt11-strips_p02
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 63 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p03
    cd parcprinter-opt11-strips_p03
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p03/output &> ../logs/parcprinter-opt11-strips_p03
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 64 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p04
    cd parcprinter-opt11-strips_p04
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p04/output &> ../logs/parcprinter-opt11-strips_p04
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 65 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p05
    cd parcprinter-opt11-strips_p05
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p05/output &> ../logs/parcprinter-opt11-strips_p05
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 66 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p06
    cd parcprinter-opt11-strips_p06
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p06/output &> ../logs/parcprinter-opt11-strips_p06
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 67 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p07
    cd parcprinter-opt11-strips_p07
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p07/output &> ../logs/parcprinter-opt11-strips_p07
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 68 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p08
    cd parcprinter-opt11-strips_p08
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p08/output &> ../logs/parcprinter-opt11-strips_p08
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 69 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p09
    cd parcprinter-opt11-strips_p09
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p09/output &> ../logs/parcprinter-opt11-strips_p09
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 70 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p10
    cd parcprinter-opt11-strips_p10
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p10/output &> ../logs/parcprinter-opt11-strips_p10
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 71 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p11
    cd parcprinter-opt11-strips_p11
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p11/output &> ../logs/parcprinter-opt11-strips_p11
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 72 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p12
    cd parcprinter-opt11-strips_p12
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p12/output &> ../logs/parcprinter-opt11-strips_p12
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 73 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p13
    cd parcprinter-opt11-strips_p13
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p13/output &> ../logs/parcprinter-opt11-strips_p13
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 74 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p14
    cd parcprinter-opt11-strips_p14
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p14/output &> ../logs/parcprinter-opt11-strips_p14
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 75 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p15
    cd parcprinter-opt11-strips_p15
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p15/output &> ../logs/parcprinter-opt11-strips_p15
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 76 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p16
    cd parcprinter-opt11-strips_p16
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p16/output &> ../logs/parcprinter-opt11-strips_p16
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 77 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p17
    cd parcprinter-opt11-strips_p17
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p17/output &> ../logs/parcprinter-opt11-strips_p17
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 78 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p18
    cd parcprinter-opt11-strips_p18
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p18/output &> ../logs/parcprinter-opt11-strips_p18
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 79 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p19
    cd parcprinter-opt11-strips_p19
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p19/output &> ../logs/parcprinter-opt11-strips_p19
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 80 -eq $SGE_TASK_ID ]; then
    mkdir parcprinter-opt11-strips_p20
    cd parcprinter-opt11-strips_p20
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/parcprinter-opt11-strips/p20/output &> ../logs/parcprinter-opt11-strips_p20
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 81 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p01
    cd scanalyzer-opt11-strips_p01
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p01/output &> ../logs/scanalyzer-opt11-strips_p01
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 82 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p02
    cd scanalyzer-opt11-strips_p02
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p02/output &> ../logs/scanalyzer-opt11-strips_p02
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 83 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p03
    cd scanalyzer-opt11-strips_p03
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p03/output &> ../logs/scanalyzer-opt11-strips_p03
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 84 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p04
    cd scanalyzer-opt11-strips_p04
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p04/output &> ../logs/scanalyzer-opt11-strips_p04
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 85 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p05
    cd scanalyzer-opt11-strips_p05
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p05/output &> ../logs/scanalyzer-opt11-strips_p05
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 86 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p06
    cd scanalyzer-opt11-strips_p06
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p06/output &> ../logs/scanalyzer-opt11-strips_p06
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 87 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p07
    cd scanalyzer-opt11-strips_p07
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p07/output &> ../logs/scanalyzer-opt11-strips_p07
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 88 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p08
    cd scanalyzer-opt11-strips_p08
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p08/output &> ../logs/scanalyzer-opt11-strips_p08
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 89 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p09
    cd scanalyzer-opt11-strips_p09
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p09/output &> ../logs/scanalyzer-opt11-strips_p09
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 90 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p10
    cd scanalyzer-opt11-strips_p10
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p10/output &> ../logs/scanalyzer-opt11-strips_p10
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 91 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p11
    cd scanalyzer-opt11-strips_p11
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p11/output &> ../logs/scanalyzer-opt11-strips_p11
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 92 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p12
    cd scanalyzer-opt11-strips_p12
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p12/output &> ../logs/scanalyzer-opt11-strips_p12
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 93 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p13
    cd scanalyzer-opt11-strips_p13
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p13/output &> ../logs/scanalyzer-opt11-strips_p13
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 94 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p14
    cd scanalyzer-opt11-strips_p14
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p14/output &> ../logs/scanalyzer-opt11-strips_p14
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 95 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p15
    cd scanalyzer-opt11-strips_p15
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p15/output &> ../logs/scanalyzer-opt11-strips_p15
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 96 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p16
    cd scanalyzer-opt11-strips_p16
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p16/output &> ../logs/scanalyzer-opt11-strips_p16
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 97 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p17
    cd scanalyzer-opt11-strips_p17
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p17/output &> ../logs/scanalyzer-opt11-strips_p17
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 98 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p18
    cd scanalyzer-opt11-strips_p18
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p18/output &> ../logs/scanalyzer-opt11-strips_p18
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 99 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p19
    cd scanalyzer-opt11-strips_p19
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p19/output &> ../logs/scanalyzer-opt11-strips_p19
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 100 -eq $SGE_TASK_ID ]; then
    mkdir scanalyzer-opt11-strips_p20
    cd scanalyzer-opt11-strips_p20
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/scanalyzer-opt11-strips/p20/output &> ../logs/scanalyzer-opt11-strips_p20
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 101 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p01
    cd transport-opt11-strips_p01
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p01/output &> ../logs/transport-opt11-strips_p01
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 102 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p02
    cd transport-opt11-strips_p02
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p02/output &> ../logs/transport-opt11-strips_p02
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 103 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p03
    cd transport-opt11-strips_p03
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p03/output &> ../logs/transport-opt11-strips_p03
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 104 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p04
    cd transport-opt11-strips_p04
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p04/output &> ../logs/transport-opt11-strips_p04
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 105 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p05
    cd transport-opt11-strips_p05
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p05/output &> ../logs/transport-opt11-strips_p05
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 106 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p06
    cd transport-opt11-strips_p06
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p06/output &> ../logs/transport-opt11-strips_p06
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 107 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p07
    cd transport-opt11-strips_p07
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p07/output &> ../logs/transport-opt11-strips_p07
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 108 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p08
    cd transport-opt11-strips_p08
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p08/output &> ../logs/transport-opt11-strips_p08
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 109 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p09
    cd transport-opt11-strips_p09
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p09/output &> ../logs/transport-opt11-strips_p09
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 110 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p10
    cd transport-opt11-strips_p10
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p10/output &> ../logs/transport-opt11-strips_p10
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 111 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p11
    cd transport-opt11-strips_p11
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p11/output &> ../logs/transport-opt11-strips_p11
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 112 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p12
    cd transport-opt11-strips_p12
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p12/output &> ../logs/transport-opt11-strips_p12
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 113 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p13
    cd transport-opt11-strips_p13
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p13/output &> ../logs/transport-opt11-strips_p13
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 114 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p14
    cd transport-opt11-strips_p14
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p14/output &> ../logs/transport-opt11-strips_p14
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 115 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p15
    cd transport-opt11-strips_p15
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p15/output &> ../logs/transport-opt11-strips_p15
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 116 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p16
    cd transport-opt11-strips_p16
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p16/output &> ../logs/transport-opt11-strips_p16
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 117 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p17
    cd transport-opt11-strips_p17
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p17/output &> ../logs/transport-opt11-strips_p17
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 118 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p18
    cd transport-opt11-strips_p18
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p18/output &> ../logs/transport-opt11-strips_p18
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 119 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p19
    cd transport-opt11-strips_p19
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p19/output &> ../logs/transport-opt11-strips_p19
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 120 -eq $SGE_TASK_ID ]; then
    mkdir transport-opt11-strips_p20
    cd transport-opt11-strips_p20
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/transport-opt11-strips/p20/output &> ../logs/transport-opt11-strips_p20
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 121 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p01
    cd woodworking-opt11-strips_p01
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p01/output &> ../logs/woodworking-opt11-strips_p01
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 122 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p02
    cd woodworking-opt11-strips_p02
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p02/output &> ../logs/woodworking-opt11-strips_p02
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 123 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p03
    cd woodworking-opt11-strips_p03
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p03/output &> ../logs/woodworking-opt11-strips_p03
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 124 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p04
    cd woodworking-opt11-strips_p04
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p04/output &> ../logs/woodworking-opt11-strips_p04
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 125 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p05
    cd woodworking-opt11-strips_p05
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p05/output &> ../logs/woodworking-opt11-strips_p05
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 126 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p06
    cd woodworking-opt11-strips_p06
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p06/output &> ../logs/woodworking-opt11-strips_p06
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 127 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p07
    cd woodworking-opt11-strips_p07
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p07/output &> ../logs/woodworking-opt11-strips_p07
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 128 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p08
    cd woodworking-opt11-strips_p08
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p08/output &> ../logs/woodworking-opt11-strips_p08
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 129 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p09
    cd woodworking-opt11-strips_p09
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p09/output &> ../logs/woodworking-opt11-strips_p09
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 130 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p10
    cd woodworking-opt11-strips_p10
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p10/output &> ../logs/woodworking-opt11-strips_p10
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 131 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p11
    cd woodworking-opt11-strips_p11
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p11/output &> ../logs/woodworking-opt11-strips_p11
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 132 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p12
    cd woodworking-opt11-strips_p12
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p12/output &> ../logs/woodworking-opt11-strips_p12
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 133 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p13
    cd woodworking-opt11-strips_p13
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p13/output &> ../logs/woodworking-opt11-strips_p13
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 134 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p14
    cd woodworking-opt11-strips_p14
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p14/output &> ../logs/woodworking-opt11-strips_p14
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 135 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p15
    cd woodworking-opt11-strips_p15
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p15/output &> ../logs/woodworking-opt11-strips_p15
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 136 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p16
    cd woodworking-opt11-strips_p16
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p16/output &> ../logs/woodworking-opt11-strips_p16
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 137 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p17
    cd woodworking-opt11-strips_p17
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p17/output &> ../logs/woodworking-opt11-strips_p17
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 138 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p18
    cd woodworking-opt11-strips_p18
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p18/output &> ../logs/woodworking-opt11-strips_p18
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 139 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p19
    cd woodworking-opt11-strips_p19
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p19/output &> ../logs/woodworking-opt11-strips_p19
    rm -f core.*
    rm -f downward.*
    exit $?
fi
if [ 140 -eq $SGE_TASK_ID ]; then
    mkdir woodworking-opt11-strips_p20
    cd woodworking-opt11-strips_p20
    /home/ifi/pommeren/downward/src/search/downward --search "astar(incremental_lmcut(memory_limit=750))" < /home/ifi/pommeren/relaxeddelete/original-task-translations/woodworking-opt11-strips/p20/output &> ../logs/woodworking-opt11-strips_p20
    rm -f core.*
    rm -f downward.*
    exit $?
fi
