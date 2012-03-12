#! /bin/bash
#$ -S /bin/bash
#$ -m n
#$ -cwd
#$ -e log 
#$ -o log
#$ -l h_cpu=0:05:30
#$ -l h_vmem=2G
#$ -q athlon_core.q
#$ -t 1-41

if [ 1 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir grid_prob01
    cd grid_prob01
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/grid/prob01/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/grid_prob01
    exit $?
fi
if [ 2 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir grid_prob02
    cd grid_prob02
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/grid/prob02/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/grid_prob02
    exit $?
fi
if [ 3 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir grid_prob03
    cd grid_prob03
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/grid/prob03/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/grid_prob03
    exit $?
fi
if [ 4 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir grid_prob04
    cd grid_prob04
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/grid/prob04/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/grid_prob04
    exit $?
fi
if [ 5 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir grid_prob05
    cd grid_prob05
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/grid/prob05/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/grid_prob05
    exit $?
fi
if [ 6 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p01-pfile1
    cd satellite_p01-pfile1
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p01-pfile1/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p01-pfile1
    exit $?
fi
if [ 7 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p02-pfile2
    cd satellite_p02-pfile2
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p02-pfile2/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p02-pfile2
    exit $?
fi
if [ 8 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p03-pfile3
    cd satellite_p03-pfile3
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p03-pfile3/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p03-pfile3
    exit $?
fi
if [ 9 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p04-pfile4
    cd satellite_p04-pfile4
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p04-pfile4/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p04-pfile4
    exit $?
fi
if [ 10 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p05-pfile5
    cd satellite_p05-pfile5
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p05-pfile5/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p05-pfile5
    exit $?
fi
if [ 11 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p06-pfile6
    cd satellite_p06-pfile6
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p06-pfile6/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p06-pfile6
    exit $?
fi
if [ 12 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p07-pfile7
    cd satellite_p07-pfile7
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p07-pfile7/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p07-pfile7
    exit $?
fi
if [ 13 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p08-pfile8
    cd satellite_p08-pfile8
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p08-pfile8/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p08-pfile8
    exit $?
fi
if [ 14 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p09-pfile9
    cd satellite_p09-pfile9
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p09-pfile9/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p09-pfile9
    exit $?
fi
if [ 15 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p10-pfile10
    cd satellite_p10-pfile10
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p10-pfile10/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p10-pfile10
    exit $?
fi
if [ 16 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p11-pfile11
    cd satellite_p11-pfile11
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p11-pfile11/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p11-pfile11
    exit $?
fi
if [ 17 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p12-pfile12
    cd satellite_p12-pfile12
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p12-pfile12/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p12-pfile12
    exit $?
fi
if [ 18 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p13-pfile13
    cd satellite_p13-pfile13
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p13-pfile13/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p13-pfile13
    exit $?
fi
if [ 19 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p14-pfile14
    cd satellite_p14-pfile14
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p14-pfile14/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p14-pfile14
    exit $?
fi
if [ 20 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p15-pfile15
    cd satellite_p15-pfile15
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p15-pfile15/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p15-pfile15
    exit $?
fi
if [ 21 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p16-pfile16
    cd satellite_p16-pfile16
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p16-pfile16/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p16-pfile16
    exit $?
fi
if [ 22 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p17-pfile17
    cd satellite_p17-pfile17
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p17-pfile17/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p17-pfile17
    exit $?
fi
if [ 23 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p18-pfile18
    cd satellite_p18-pfile18
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p18-pfile18/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p18-pfile18
    exit $?
fi
if [ 24 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p19-pfile19
    cd satellite_p19-pfile19
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p19-pfile19/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p19-pfile19
    exit $?
fi
if [ 25 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p20-pfile20
    cd satellite_p20-pfile20
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p20-pfile20/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p20-pfile20
    exit $?
fi
if [ 26 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p21-HC-pfile1
    cd satellite_p21-HC-pfile1
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p21-HC-pfile1/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p21-HC-pfile1
    exit $?
fi
if [ 27 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p22-HC-pfile2
    cd satellite_p22-HC-pfile2
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p22-HC-pfile2/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p22-HC-pfile2
    exit $?
fi
if [ 28 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p23-HC-pfile3
    cd satellite_p23-HC-pfile3
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p23-HC-pfile3/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p23-HC-pfile3
    exit $?
fi
if [ 29 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p24-HC-pfile4
    cd satellite_p24-HC-pfile4
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p24-HC-pfile4/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p24-HC-pfile4
    exit $?
fi
if [ 30 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p25-HC-pfile5
    cd satellite_p25-HC-pfile5
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p25-HC-pfile5/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p25-HC-pfile5
    exit $?
fi
if [ 31 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p26-HC-pfile6
    cd satellite_p26-HC-pfile6
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p26-HC-pfile6/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p26-HC-pfile6
    exit $?
fi
if [ 32 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p27-HC-pfile7
    cd satellite_p27-HC-pfile7
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p27-HC-pfile7/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p27-HC-pfile7
    exit $?
fi
if [ 33 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p28-HC-pfile8
    cd satellite_p28-HC-pfile8
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p28-HC-pfile8/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p28-HC-pfile8
    exit $?
fi
if [ 34 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p29-HC-pfile9
    cd satellite_p29-HC-pfile9
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p29-HC-pfile9/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p29-HC-pfile9
    exit $?
fi
if [ 35 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p30-HC-pfile10
    cd satellite_p30-HC-pfile10
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p30-HC-pfile10/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p30-HC-pfile10
    exit $?
fi
if [ 36 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p31-HC-pfile11
    cd satellite_p31-HC-pfile11
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p31-HC-pfile11/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p31-HC-pfile11
    exit $?
fi
if [ 37 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p32-HC-pfile12
    cd satellite_p32-HC-pfile12
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p32-HC-pfile12/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p32-HC-pfile12
    exit $?
fi
if [ 38 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p33-HC-pfile13
    cd satellite_p33-HC-pfile13
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p33-HC-pfile13/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p33-HC-pfile13
    exit $?
fi
if [ 39 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p34-HC-pfile14
    cd satellite_p34-HC-pfile14
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p34-HC-pfile14/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p34-HC-pfile14
    exit $?
fi
if [ 40 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p35-HC-pfile15
    cd satellite_p35-HC-pfile15
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p35-HC-pfile15/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p35-HC-pfile15
    exit $?
fi
if [ 41 -eq $SGE_TASK_ID ]; then
    cd /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward
    mkdir satellite_p36-HC-pfile16
    cd satellite_p36-HC-pfile16
    /home/pommeren/downward/src/search/downward --search "astar(lmcut())" < /home/pommeren/masterthesis/implementation/translations/satellite/p36-HC-pfile16/output &> /home/pommeren/masterthesis/implementation/additional\ icaps\ experiments/ICAPS-E01\ -\ Fast\ Downward/logs/satellite_p36-HC-pfile16
    exit $?
fi
