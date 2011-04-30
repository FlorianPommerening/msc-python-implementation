begin_metric
0
end_metric
begin_variables
22
var0 6 -1
var1 7 -1
var2 6 -1
var3 5 -1
var4 5 -1
var5 5 -1
var6 5 -1
var7 5 -1
var8 4 -1
var9 4 -1
var10 2 -1
var11 2 -1
var12 2 -1
var13 2 -1
var14 2 -1
var15 2 -1
var16 2 -1
var17 2 -1
var18 2 -1
var19 2 -1
var20 2 -1
var21 2 -1
end_variables
begin_state
3
4
2
4
4
0
1
1
3
3
0
0
0
0
0
0
0
0
0
1
1
0
end_state
begin_goal
4
0 4
2 4
4 0
8 2
end_goal
504
begin_operator
sendtofree spadea spade2 n2 n1
0
4
0 2 2 0
0 5 0 3
0 9 -1 1
0 15 0 1
0
end_operator
begin_operator
sendtofree diamonda hearta n2 n1
0
4
0 1 4 2
0 5 0 3
0 14 0 1
0 20 -1 0
0
end_operator
begin_operator
sendtofree club2 diamond2 n2 n1
0
4
0 0 3 1
0 5 0 3
0 8 -1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree heart2 cluba n2 n1
0
3
0 4 4 2
0 5 0 3
0 7 1 3
0
end_operator
begin_operator
move spadea spade2 heart2
1
15 0
2
0 2 2 0
0 4 4 3
0
end_operator
begin_operator
move diamonda hearta club2
1
14 0
3
0 1 4 1
0 20 -1 0
0 21 0 1
0
end_operator
begin_operator
sendtohome diamonda hearta diamond n1 diamond0 n0
0
4
0 1 4 5
0 10 0 1
0 14 0 1
0 20 -1 0
0
end_operator
begin_operator
sendtohome spadea spade2 spade n1 spade0 n0
0
4
0 2 2 0
0 9 -1 2
0 11 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n2 n1 n0 n1
0
4
0 2 0 1
0 3 4 2
0 5 0 3
0 18 0 1
0
end_operator
begin_operator
sendtofree-b hearta n2 n1 n0 n1
0
4
0 3 4 2
0 5 0 3
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n2 n1 n0 n1
0
4
0 0 1 0
0 3 4 2
0 5 0 3
0 16 0 1
0
end_operator
begin_operator
sendtofree-b cluba n2 n1 n0 n1
0
4
0 3 4 2
0 5 0 3
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
move diamonda hearta spade2
1
14 0
3
0 1 4 0
0 2 0 5
0 20 -1 0
0
end_operator
begin_operator
sendtofree spadea spade2 n1 n0
0
4
0 2 2 0
0 5 3 1
0 9 -1 1
0 15 0 1
0
end_operator
begin_operator
sendtofree diamonda hearta n1 n0
0
4
0 1 4 2
0 5 3 1
0 14 0 1
0 20 -1 0
0
end_operator
begin_operator
sendtofree club2 diamond2 n1 n0
0
4
0 0 3 1
0 5 3 1
0 8 -1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree heart2 cluba n1 n0
0
3
0 4 4 2
0 5 3 1
0 7 1 3
0
end_operator
begin_operator
sendtofree-b spade2 n1 n0 n0 n1
0
4
0 2 0 1
0 3 4 2
0 5 3 1
0 18 0 1
0
end_operator
begin_operator
sendtofree-b hearta n1 n0 n0 n1
0
4
0 3 4 2
0 5 3 1
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n1 n0 n0 n1
0
4
0 0 1 0
0 3 4 2
0 5 3 1
0 16 0 1
0
end_operator
begin_operator
sendtofree-b cluba n1 n0 n0 n1
0
4
0 3 4 2
0 5 3 1
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
move diamonda club2 spade2
1
14 0
3
0 1 1 0
0 2 0 5
0 21 -1 0
0
end_operator
begin_operator
move-b hearta club2 n0 n1
1
20 0
3
0 3 4 2
0 6 1 3
0 21 0 1
0
end_operator
begin_operator
move spadea spade2 diamond2
1
15 0
2
0 0 1 5
0 2 2 0
0
end_operator
begin_operator
move spadea heart2 diamond2
1
15 0
2
0 0 1 5
0 4 3 4
0
end_operator
begin_operator
move-b cluba heart2 n0 n1
1
7 3
3
0 3 4 2
0 4 4 1
0 17 0 1
0
end_operator
begin_operator
sendtofree spadea heart2 n2 n1
0
4
0 4 3 4
0 5 0 3
0 9 -1 1
0 15 0 1
0
end_operator
begin_operator
sendtofree spadea heart2 n1 n0
0
4
0 4 3 4
0 5 3 1
0 9 -1 1
0 15 0 1
0
end_operator
begin_operator
sendtohome spadea heart2 spade n1 spade0 n0
0
4
0 4 3 4
0 9 -1 2
0 11 0 1
0 15 0 1
0
end_operator
begin_operator
colfromfreecell spadea diamond2 n2 n3
0
4
0 0 1 5
0 5 0 2
0 9 1 3
0 15 -1 0
0
end_operator
begin_operator
colfromfreecell spadea diamond2 n1 n2
0
4
0 0 1 5
0 5 3 0
0 9 1 3
0 15 -1 0
0
end_operator
begin_operator
colfromfreecell spadea heart2 n2 n3
0
4
0 4 4 3
0 5 0 2
0 9 1 3
0 15 -1 0
0
end_operator
begin_operator
colfromfreecell spadea heart2 n1 n2
0
4
0 4 4 3
0 5 3 0
0 9 1 3
0 15 -1 0
0
end_operator
begin_operator
move-b hearta spade2 n0 n1
1
20 0
3
0 2 0 3
0 3 4 2
0 6 1 4
0
end_operator
begin_operator
sendtofree diamonda club2 n2 n1
0
4
0 1 1 2
0 5 0 3
0 14 0 1
0 21 -1 0
0
end_operator
begin_operator
sendtofree diamonda club2 n1 n0
0
4
0 1 1 2
0 5 3 1
0 14 0 1
0 21 -1 0
0
end_operator
begin_operator
sendtohome diamonda club2 diamond n1 diamond0 n0
0
4
0 1 1 5
0 10 0 1
0 14 0 1
0 21 -1 0
0
end_operator
begin_operator
colfromfreecell diamonda club2 n2 n3
0
4
0 1 2 1
0 5 0 2
0 14 -1 0
0 21 0 1
0
end_operator
begin_operator
colfromfreecell diamonda club2 n1 n2
0
4
0 1 2 1
0 5 3 0
0 14 -1 0
0 21 0 1
0
end_operator
begin_operator
colfromfreecell diamonda spade2 n2 n3
0
4
0 1 2 0
0 2 0 5
0 5 0 2
0 14 -1 0
0
end_operator
begin_operator
colfromfreecell diamonda spade2 n1 n2
0
4
0 1 2 0
0 2 0 5
0 5 3 0
0 14 -1 0
0
end_operator
begin_operator
move-b cluba diamond2 n0 n1
1
7 3
3
0 0 1 2
0 3 4 2
0 17 0 1
0
end_operator
begin_operator
homefromfreecell spadea spade n1 spade0 n0 n2 n3
0
3
0 5 0 2
0 9 1 2
0 11 0 1
0
end_operator
begin_operator
homefromfreecell spadea spade n1 spade0 n0 n1 n2
0
3
0 5 3 0
0 9 1 2
0 11 0 1
0
end_operator
begin_operator
homefromfreecell diamonda diamond n1 diamond0 n0 n2 n3
0
3
0 1 2 5
0 5 0 2
0 10 0 1
0
end_operator
begin_operator
homefromfreecell diamonda diamond n1 diamond0 n0 n1 n2
0
3
0 1 2 5
0 5 3 0
0 10 0 1
0
end_operator
begin_operator
sendtohome-b hearta heart n1 heart0 n0 n0 n1
0
4
0 3 4 2
0 6 1 2
0 12 0 1
0 20 0 1
0
end_operator
begin_operator
sendtohome-b cluba club n1 club0 n0 n0 n1
0
4
0 3 4 2
0 7 3 0
0 13 0 1
0 17 0 1
0
end_operator
begin_operator
move diamonda spade2 club2
1
14 0
3
0 1 0 1
0 2 -1 0
0 21 0 1
0
end_operator
begin_operator
move-b hearta club2 n1 n2
1
20 0
3
0 3 2 3
0 6 1 3
0 21 0 1
0
end_operator
begin_operator
move-b cluba heart2 n1 n2
1
7 3
3
0 3 2 3
0 4 4 1
0 17 0 1
0
end_operator
begin_operator
move-b hearta spade2 n1 n2
1
20 0
3
0 2 0 3
0 3 2 3
0 6 1 4
0
end_operator
begin_operator
move-b cluba diamond2 n1 n2
1
7 3
3
0 0 1 2
0 3 2 3
0 17 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n2 n1 n1 n2
0
4
0 2 0 1
0 3 2 3
0 5 0 3
0 18 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n1 n0 n1 n2
0
4
0 2 0 1
0 3 2 3
0 5 3 1
0 18 0 1
0
end_operator
begin_operator
sendtofree-b hearta n2 n1 n1 n2
0
4
0 3 2 3
0 5 0 3
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b hearta n1 n0 n1 n2
0
4
0 3 2 3
0 5 3 1
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n2 n1 n1 n2
0
4
0 0 1 0
0 3 2 3
0 5 0 3
0 16 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n1 n0 n1 n2
0
4
0 0 1 0
0 3 2 3
0 5 3 1
0 16 0 1
0
end_operator
begin_operator
sendtofree-b cluba n2 n1 n1 n2
0
4
0 3 2 3
0 5 0 3
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtofree-b cluba n1 n0 n1 n2
0
4
0 3 2 3
0 5 3 1
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtonewcol spadea spade2 n1 n0
1
15 0
3
0 2 2 0
0 3 2 4
0 9 -1 0
0
end_operator
begin_operator
sendtonewcol diamonda hearta n1 n0
1
14 0
3
0 1 4 3
0 3 2 4
0 20 -1 0
0
end_operator
begin_operator
sendtonewcol club2 diamond2 n1 n0
1
21 0
3
0 0 3 1
0 3 2 4
0 8 -1 1
0
end_operator
begin_operator
sendtonewcol heart2 cluba n1 n0
1
4 4
3
0 3 2 4
0 7 1 3
0 19 -1 0
0
end_operator
begin_operator
sendtonewcol spadea heart2 n1 n0
1
15 0
3
0 3 2 4
0 4 3 4
0 9 -1 0
0
end_operator
begin_operator
sendtonewcol diamonda club2 n1 n0
1
14 0
3
0 1 1 3
0 3 2 4
0 21 -1 0
0
end_operator
begin_operator
sendtohome-b hearta heart n1 heart0 n0 n1 n2
0
4
0 3 2 3
0 6 1 2
0 12 0 1
0 20 0 1
0
end_operator
begin_operator
sendtohome-b cluba club n1 club0 n0 n1 n2
0
4
0 3 2 3
0 7 3 0
0 13 0 1
0 17 0 1
0
end_operator
begin_operator
newcolfromfreecell spadea n1 n0 n2 n3
0
4
0 3 2 4
0 5 0 2
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n1 n0 n2 n3
0
4
0 1 2 3
0 3 2 4
0 5 0 2
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n1 n0 n2 n3
0
4
0 3 2 4
0 5 0 2
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n1 n0 n2 n3
0
4
0 3 2 4
0 4 2 4
0 5 0 2
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n1 n0 n2 n3
0
4
0 2 1 0
0 3 2 4
0 5 0 2
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n1 n0 n2 n3
0
4
0 3 2 4
0 5 0 2
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n1 n0 n2 n3
0
4
0 0 0 1
0 3 2 4
0 5 0 2
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n1 n0 n2 n3
0
4
0 3 2 4
0 5 0 2
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
newcolfromfreecell spadea n1 n0 n1 n2
0
4
0 3 2 4
0 5 3 0
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n1 n0 n1 n2
0
4
0 1 2 3
0 3 2 4
0 5 3 0
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n1 n0 n1 n2
0
4
0 3 2 4
0 5 3 0
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n1 n0 n1 n2
0
4
0 3 2 4
0 4 2 4
0 5 3 0
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n1 n0 n1 n2
0
4
0 2 1 0
0 3 2 4
0 5 3 0
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n1 n0 n1 n2
0
4
0 3 2 4
0 5 3 0
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n1 n0 n1 n2
0
4
0 0 0 1
0 3 2 4
0 5 3 0
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n1 n0 n1 n2
0
4
0 3 2 4
0 5 3 0
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
move hearta club2 spade2
1
20 0
3
0 2 0 3
0 6 3 4
0 21 -1 0
0
end_operator
begin_operator
move spadea diamond2 heart2
1
15 0
2
0 0 5 1
0 4 4 3
0
end_operator
begin_operator
move cluba heart2 diamond2
1
7 3
2
0 0 1 2
0 4 1 4
0
end_operator
begin_operator
sendtofree diamonda spade2 n2 n1
0
4
0 1 0 2
0 2 -1 0
0 5 0 3
0 14 0 1
0
end_operator
begin_operator
sendtofree diamonda spade2 n1 n0
0
4
0 1 0 2
0 2 -1 0
0 5 3 1
0 14 0 1
0
end_operator
begin_operator
sendtonewcol diamonda spade2 n1 n0
1
14 0
3
0 1 0 3
0 2 -1 0
0 3 2 4
0
end_operator
begin_operator
sendtohome diamonda spade2 diamond n1 diamond0 n0
0
4
0 1 0 5
0 2 -1 0
0 10 0 1
0 14 0 1
0
end_operator
begin_operator
move hearta spade2 club2
1
20 0
3
0 2 3 0
0 6 -1 3
0 21 0 1
0
end_operator
begin_operator
homefromfreecell spadea spade n1 spade0 n0 n0 n1
0
3
0 5 1 3
0 9 1 2
0 11 0 1
0
end_operator
begin_operator
homefromfreecell diamonda diamond n1 diamond0 n0 n0 n1
0
3
0 1 2 5
0 5 1 3
0 10 0 1
0
end_operator
begin_operator
colfromfreecell spadea diamond2 n0 n1
0
4
0 0 1 5
0 5 1 3
0 9 1 3
0 15 -1 0
0
end_operator
begin_operator
colfromfreecell spadea heart2 n0 n1
0
4
0 4 4 3
0 5 1 3
0 9 1 3
0 15 -1 0
0
end_operator
begin_operator
colfromfreecell diamonda club2 n0 n1
0
4
0 1 2 1
0 5 1 3
0 14 -1 0
0 21 0 1
0
end_operator
begin_operator
colfromfreecell diamonda spade2 n0 n1
0
4
0 1 2 0
0 2 0 5
0 5 1 3
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell spadea n1 n0 n0 n1
0
4
0 3 2 4
0 5 1 3
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n1 n0 n0 n1
0
4
0 1 2 3
0 3 2 4
0 5 1 3
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n1 n0 n0 n1
0
4
0 3 2 4
0 5 1 3
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n1 n0 n0 n1
0
4
0 3 2 4
0 4 2 4
0 5 1 3
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n1 n0 n0 n1
0
4
0 2 1 0
0 3 2 4
0 5 1 3
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n1 n0 n0 n1
0
4
0 3 2 4
0 5 1 3
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n1 n0 n0 n1
0
4
0 0 0 1
0 3 2 4
0 5 1 3
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n1 n0 n0 n1
0
4
0 3 2 4
0 5 1 3
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
sendtofree hearta club2 n2 n1
0
4
0 5 0 3
0 6 3 0
0 20 0 1
0 21 -1 0
0
end_operator
begin_operator
sendtofree hearta club2 n1 n0
0
4
0 5 3 1
0 6 3 0
0 20 0 1
0 21 -1 0
0
end_operator
begin_operator
sendtonewcol hearta club2 n1 n0
1
20 0
3
0 3 2 4
0 6 3 1
0 21 -1 0
0
end_operator
begin_operator
sendtohome hearta club2 heart n1 heart0 n0
0
4
0 6 3 2
0 12 0 1
0 20 0 1
0 21 -1 0
0
end_operator
begin_operator
colfromfreecell hearta club2 n2 n3
0
4
0 5 0 2
0 6 0 3
0 20 -1 0
0 21 0 1
0
end_operator
begin_operator
colfromfreecell hearta club2 n1 n2
0
4
0 5 3 0
0 6 0 3
0 20 -1 0
0 21 0 1
0
end_operator
begin_operator
colfromfreecell hearta club2 n0 n1
0
4
0 5 1 3
0 6 0 3
0 20 -1 0
0 21 0 1
0
end_operator
begin_operator
colfromfreecell hearta spade2 n2 n3
0
4
0 2 0 3
0 5 0 2
0 6 0 4
0 20 -1 0
0
end_operator
begin_operator
colfromfreecell hearta spade2 n1 n2
0
4
0 2 0 3
0 5 3 0
0 6 0 4
0 20 -1 0
0
end_operator
begin_operator
colfromfreecell hearta spade2 n0 n1
0
4
0 2 0 3
0 5 1 3
0 6 0 4
0 20 -1 0
0
end_operator
begin_operator
sendtofree spadea diamond2 n2 n1
0
4
0 0 5 1
0 5 0 3
0 9 -1 1
0 15 0 1
0
end_operator
begin_operator
sendtofree spadea diamond2 n1 n0
0
4
0 0 5 1
0 5 3 1
0 9 -1 1
0 15 0 1
0
end_operator
begin_operator
sendtonewcol spadea diamond2 n1 n0
1
15 0
3
0 0 5 1
0 3 2 4
0 9 -1 0
0
end_operator
begin_operator
sendtohome spadea diamond2 spade n1 spade0 n0
0
4
0 0 5 1
0 9 -1 2
0 11 0 1
0 15 0 1
0
end_operator
begin_operator
move cluba diamond2 heart2
1
7 3
2
0 0 2 1
0 4 4 1
0
end_operator
begin_operator
sendtofree cluba heart2 n2 n1
0
3
0 4 1 4
0 5 0 3
0 7 3 2
0
end_operator
begin_operator
sendtofree cluba heart2 n1 n0
0
3
0 4 1 4
0 5 3 1
0 7 3 2
0
end_operator
begin_operator
sendtonewcol cluba heart2 n1 n0
1
7 3
3
0 3 2 4
0 4 1 4
0 17 -1 0
0
end_operator
begin_operator
sendtohome cluba heart2 club n1 club0 n0
0
3
0 4 1 4
0 7 3 0
0 13 0 1
0
end_operator
begin_operator
colfromfreecell cluba diamond2 n2 n3
0
3
0 0 1 2
0 5 0 2
0 7 2 3
0
end_operator
begin_operator
colfromfreecell cluba diamond2 n1 n2
0
3
0 0 1 2
0 5 3 0
0 7 2 3
0
end_operator
begin_operator
colfromfreecell cluba diamond2 n0 n1
0
3
0 0 1 2
0 5 1 3
0 7 2 3
0
end_operator
begin_operator
colfromfreecell cluba heart2 n2 n3
0
3
0 4 4 1
0 5 0 2
0 7 2 3
0
end_operator
begin_operator
colfromfreecell cluba heart2 n1 n2
0
3
0 4 4 1
0 5 3 0
0 7 2 3
0
end_operator
begin_operator
colfromfreecell cluba heart2 n0 n1
0
3
0 4 4 1
0 5 1 3
0 7 2 3
0
end_operator
begin_operator
sendtohome-b diamond2 diamond n2 diamonda n1 n0 n1
0
4
0 0 1 4
0 1 5 6
0 3 4 2
0 16 0 1
0
end_operator
begin_operator
sendtohome-b diamond2 diamond n2 diamonda n1 n1 n2
0
4
0 0 1 4
0 1 5 6
0 3 2 3
0 16 0 1
0
end_operator
begin_operator
sendtohome-b spade2 spade n2 spadea n1 n0 n1
0
4
0 2 0 4
0 3 4 2
0 9 2 3
0 18 0 1
0
end_operator
begin_operator
sendtohome-b spade2 spade n2 spadea n1 n1 n2
0
4
0 2 0 4
0 3 2 3
0 9 2 3
0 18 0 1
0
end_operator
begin_operator
sendtofree spadea spade2 n3 n2
0
4
0 2 2 0
0 5 2 0
0 9 -1 1
0 15 0 1
0
end_operator
begin_operator
sendtofree diamonda hearta n3 n2
0
4
0 1 4 2
0 5 2 0
0 14 0 1
0 20 -1 0
0
end_operator
begin_operator
sendtofree club2 diamond2 n3 n2
0
4
0 0 3 1
0 5 2 0
0 8 -1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree heart2 cluba n3 n2
0
3
0 4 4 2
0 5 2 0
0 7 1 3
0
end_operator
begin_operator
sendtofree spadea heart2 n3 n2
0
4
0 4 3 4
0 5 2 0
0 9 -1 1
0 15 0 1
0
end_operator
begin_operator
sendtofree diamonda club2 n3 n2
0
4
0 1 1 2
0 5 2 0
0 14 0 1
0 21 -1 0
0
end_operator
begin_operator
sendtofree diamonda spade2 n3 n2
0
4
0 1 0 2
0 2 -1 0
0 5 2 0
0 14 0 1
0
end_operator
begin_operator
sendtofree hearta club2 n3 n2
0
4
0 5 2 0
0 6 3 0
0 20 0 1
0 21 -1 0
0
end_operator
begin_operator
sendtofree spadea diamond2 n3 n2
0
4
0 0 5 1
0 5 2 0
0 9 -1 1
0 15 0 1
0
end_operator
begin_operator
sendtofree cluba heart2 n3 n2
0
3
0 4 1 4
0 5 2 0
0 7 3 2
0
end_operator
begin_operator
sendtofree-b spade2 n3 n2 n0 n1
0
4
0 2 0 1
0 3 4 2
0 5 2 0
0 18 0 1
0
end_operator
begin_operator
sendtofree-b hearta n3 n2 n0 n1
0
4
0 3 4 2
0 5 2 0
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n3 n2 n0 n1
0
4
0 0 1 0
0 3 4 2
0 5 2 0
0 16 0 1
0
end_operator
begin_operator
sendtofree-b cluba n3 n2 n0 n1
0
4
0 3 4 2
0 5 2 0
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n3 n2 n1 n2
0
4
0 2 0 1
0 3 2 3
0 5 2 0
0 18 0 1
0
end_operator
begin_operator
sendtofree-b hearta n3 n2 n1 n2
0
4
0 3 2 3
0 5 2 0
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n3 n2 n1 n2
0
4
0 0 1 0
0 3 2 3
0 5 2 0
0 16 0 1
0
end_operator
begin_operator
sendtofree-b cluba n3 n2 n1 n2
0
4
0 3 2 3
0 5 2 0
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
homefromfreecell spadea spade n1 spade0 n0 n3 n4
0
3
0 5 2 4
0 9 1 2
0 11 0 1
0
end_operator
begin_operator
homefromfreecell diamonda diamond n1 diamond0 n0 n3 n4
0
3
0 1 2 5
0 5 2 4
0 10 0 1
0
end_operator
begin_operator
colfromfreecell spadea diamond2 n3 n4
0
4
0 0 1 5
0 5 2 4
0 9 1 3
0 15 -1 0
0
end_operator
begin_operator
colfromfreecell spadea heart2 n3 n4
0
4
0 4 4 3
0 5 2 4
0 9 1 3
0 15 -1 0
0
end_operator
begin_operator
colfromfreecell diamonda club2 n3 n4
0
4
0 1 2 1
0 5 2 4
0 14 -1 0
0 21 0 1
0
end_operator
begin_operator
colfromfreecell diamonda spade2 n3 n4
0
4
0 1 2 0
0 2 0 5
0 5 2 4
0 14 -1 0
0
end_operator
begin_operator
colfromfreecell hearta club2 n3 n4
0
4
0 5 2 4
0 6 0 3
0 20 -1 0
0 21 0 1
0
end_operator
begin_operator
colfromfreecell hearta spade2 n3 n4
0
4
0 2 0 3
0 5 2 4
0 6 0 4
0 20 -1 0
0
end_operator
begin_operator
colfromfreecell cluba diamond2 n3 n4
0
3
0 0 1 2
0 5 2 4
0 7 2 3
0
end_operator
begin_operator
colfromfreecell cluba heart2 n3 n4
0
3
0 4 4 1
0 5 2 4
0 7 2 3
0
end_operator
begin_operator
newcolfromfreecell spadea n1 n0 n3 n4
0
4
0 3 2 4
0 5 2 4
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n1 n0 n3 n4
0
4
0 1 2 3
0 3 2 4
0 5 2 4
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n1 n0 n3 n4
0
4
0 3 2 4
0 5 2 4
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n1 n0 n3 n4
0
4
0 3 2 4
0 4 2 4
0 5 2 4
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n1 n0 n3 n4
0
4
0 2 1 0
0 3 2 4
0 5 2 4
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n1 n0 n3 n4
0
4
0 3 2 4
0 5 2 4
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n1 n0 n3 n4
0
4
0 0 0 1
0 3 2 4
0 5 2 4
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n1 n0 n3 n4
0
4
0 3 2 4
0 5 2 4
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
sendtofree hearta spade2 n2 n1
0
4
0 2 3 0
0 5 0 3
0 6 -1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree hearta spade2 n1 n0
0
4
0 2 3 0
0 5 3 1
0 6 -1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree hearta spade2 n3 n2
0
4
0 2 3 0
0 5 2 0
0 6 -1 0
0 20 0 1
0
end_operator
begin_operator
sendtonewcol hearta spade2 n1 n0
1
20 0
3
0 2 3 0
0 3 2 4
0 6 -1 1
0
end_operator
begin_operator
sendtohome hearta spade2 heart n1 heart0 n0
0
4
0 2 3 0
0 6 -1 2
0 12 0 1
0 20 0 1
0
end_operator
begin_operator
homefromfreecell spade2 spade n2 spadea n1 n2 n3
0
3
0 2 1 4
0 5 0 2
0 9 2 3
0
end_operator
begin_operator
homefromfreecell spade2 spade n2 spadea n1 n1 n2
0
3
0 2 1 4
0 5 3 0
0 9 2 3
0
end_operator
begin_operator
homefromfreecell spade2 spade n2 spadea n1 n0 n1
0
3
0 2 1 4
0 5 1 3
0 9 2 3
0
end_operator
begin_operator
homefromfreecell spade2 spade n2 spadea n1 n3 n4
0
3
0 2 1 4
0 5 2 4
0 9 2 3
0
end_operator
begin_operator
homefromfreecell hearta heart n1 heart0 n0 n2 n3
0
3
0 5 0 2
0 6 0 2
0 12 0 1
0
end_operator
begin_operator
homefromfreecell hearta heart n1 heart0 n0 n1 n2
0
3
0 5 3 0
0 6 0 2
0 12 0 1
0
end_operator
begin_operator
homefromfreecell hearta heart n1 heart0 n0 n0 n1
0
3
0 5 1 3
0 6 0 2
0 12 0 1
0
end_operator
begin_operator
homefromfreecell hearta heart n1 heart0 n0 n3 n4
0
3
0 5 2 4
0 6 0 2
0 12 0 1
0
end_operator
begin_operator
sendtofree cluba diamond2 n2 n1
0
3
0 0 2 1
0 5 0 3
0 7 3 2
0
end_operator
begin_operator
sendtofree cluba diamond2 n1 n0
0
3
0 0 2 1
0 5 3 1
0 7 3 2
0
end_operator
begin_operator
sendtofree cluba diamond2 n3 n2
0
3
0 0 2 1
0 5 2 0
0 7 3 2
0
end_operator
begin_operator
sendtonewcol cluba diamond2 n1 n0
1
7 3
3
0 0 2 1
0 3 2 4
0 17 -1 0
0
end_operator
begin_operator
sendtohome cluba diamond2 club n1 club0 n0
0
3
0 0 2 1
0 7 3 0
0 13 0 1
0
end_operator
begin_operator
homefromfreecell diamond2 diamond n2 diamonda n1 n2 n3
0
3
0 0 0 4
0 1 5 6
0 5 0 2
0
end_operator
begin_operator
homefromfreecell diamond2 diamond n2 diamonda n1 n1 n2
0
3
0 0 0 4
0 1 5 6
0 5 3 0
0
end_operator
begin_operator
homefromfreecell diamond2 diamond n2 diamonda n1 n0 n1
0
3
0 0 0 4
0 1 5 6
0 5 1 3
0
end_operator
begin_operator
homefromfreecell diamond2 diamond n2 diamonda n1 n3 n4
0
3
0 0 0 4
0 1 5 6
0 5 2 4
0
end_operator
begin_operator
homefromfreecell cluba club n1 club0 n0 n2 n3
0
3
0 5 0 2
0 7 2 0
0 13 0 1
0
end_operator
begin_operator
homefromfreecell cluba club n1 club0 n0 n1 n2
0
3
0 5 3 0
0 7 2 0
0 13 0 1
0
end_operator
begin_operator
homefromfreecell cluba club n1 club0 n0 n0 n1
0
3
0 5 1 3
0 7 2 0
0 13 0 1
0
end_operator
begin_operator
homefromfreecell cluba club n1 club0 n0 n3 n4
0
3
0 5 2 4
0 7 2 0
0 13 0 1
0
end_operator
begin_operator
move-b hearta club2 n2 n3
1
20 0
3
0 3 3 0
0 6 1 3
0 21 0 1
0
end_operator
begin_operator
move-b cluba heart2 n2 n3
1
7 3
3
0 3 3 0
0 4 4 1
0 17 0 1
0
end_operator
begin_operator
move-b hearta spade2 n2 n3
1
20 0
3
0 2 0 3
0 3 3 0
0 6 1 4
0
end_operator
begin_operator
move-b cluba diamond2 n2 n3
1
7 3
3
0 0 1 2
0 3 3 0
0 17 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n2 n1 n2 n3
0
4
0 2 0 1
0 3 3 0
0 5 0 3
0 18 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n1 n0 n2 n3
0
4
0 2 0 1
0 3 3 0
0 5 3 1
0 18 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n3 n2 n2 n3
0
4
0 2 0 1
0 3 3 0
0 5 2 0
0 18 0 1
0
end_operator
begin_operator
sendtofree-b hearta n2 n1 n2 n3
0
4
0 3 3 0
0 5 0 3
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b hearta n1 n0 n2 n3
0
4
0 3 3 0
0 5 3 1
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b hearta n3 n2 n2 n3
0
4
0 3 3 0
0 5 2 0
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n2 n1 n2 n3
0
4
0 0 1 0
0 3 3 0
0 5 0 3
0 16 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n1 n0 n2 n3
0
4
0 0 1 0
0 3 3 0
0 5 3 1
0 16 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n3 n2 n2 n3
0
4
0 0 1 0
0 3 3 0
0 5 2 0
0 16 0 1
0
end_operator
begin_operator
sendtofree-b cluba n2 n1 n2 n3
0
4
0 3 3 0
0 5 0 3
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtofree-b cluba n1 n0 n2 n3
0
4
0 3 3 0
0 5 3 1
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtofree-b cluba n3 n2 n2 n3
0
4
0 3 3 0
0 5 2 0
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtonewcol spadea spade2 n2 n1
1
15 0
3
0 2 2 0
0 3 3 2
0 9 -1 0
0
end_operator
begin_operator
sendtonewcol diamonda hearta n2 n1
1
14 0
3
0 1 4 3
0 3 3 2
0 20 -1 0
0
end_operator
begin_operator
sendtonewcol club2 diamond2 n2 n1
1
21 0
3
0 0 3 1
0 3 3 2
0 8 -1 1
0
end_operator
begin_operator
sendtonewcol heart2 cluba n2 n1
1
4 4
3
0 3 3 2
0 7 1 3
0 19 -1 0
0
end_operator
begin_operator
sendtonewcol spadea heart2 n2 n1
1
15 0
3
0 3 3 2
0 4 3 4
0 9 -1 0
0
end_operator
begin_operator
sendtonewcol diamonda club2 n2 n1
1
14 0
3
0 1 1 3
0 3 3 2
0 21 -1 0
0
end_operator
begin_operator
sendtonewcol diamonda spade2 n2 n1
1
14 0
3
0 1 0 3
0 2 -1 0
0 3 3 2
0
end_operator
begin_operator
sendtonewcol hearta club2 n2 n1
1
20 0
3
0 3 3 2
0 6 3 1
0 21 -1 0
0
end_operator
begin_operator
sendtonewcol spadea diamond2 n2 n1
1
15 0
3
0 0 5 1
0 3 3 2
0 9 -1 0
0
end_operator
begin_operator
sendtonewcol cluba heart2 n2 n1
1
7 3
3
0 3 3 2
0 4 1 4
0 17 -1 0
0
end_operator
begin_operator
sendtonewcol hearta spade2 n2 n1
1
20 0
3
0 2 3 0
0 3 3 2
0 6 -1 1
0
end_operator
begin_operator
sendtonewcol cluba diamond2 n2 n1
1
7 3
3
0 0 2 1
0 3 3 2
0 17 -1 0
0
end_operator
begin_operator
sendtohome-b hearta heart n1 heart0 n0 n2 n3
0
4
0 3 3 0
0 6 1 2
0 12 0 1
0 20 0 1
0
end_operator
begin_operator
sendtohome-b cluba club n1 club0 n0 n2 n3
0
4
0 3 3 0
0 7 3 0
0 13 0 1
0 17 0 1
0
end_operator
begin_operator
sendtohome-b diamond2 diamond n2 diamonda n1 n2 n3
0
4
0 0 1 4
0 1 5 6
0 3 3 0
0 16 0 1
0
end_operator
begin_operator
sendtohome-b spade2 spade n2 spadea n1 n2 n3
0
4
0 2 0 4
0 3 3 0
0 9 2 3
0 18 0 1
0
end_operator
begin_operator
newcolfromfreecell spadea n2 n1 n2 n3
0
4
0 3 3 2
0 5 0 2
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n2 n1 n2 n3
0
4
0 1 2 3
0 3 3 2
0 5 0 2
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n2 n1 n2 n3
0
4
0 3 3 2
0 5 0 2
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n2 n1 n2 n3
0
4
0 3 3 2
0 4 2 4
0 5 0 2
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n2 n1 n2 n3
0
4
0 2 1 0
0 3 3 2
0 5 0 2
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n2 n1 n2 n3
0
4
0 3 3 2
0 5 0 2
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n2 n1 n2 n3
0
4
0 0 0 1
0 3 3 2
0 5 0 2
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n2 n1 n2 n3
0
4
0 3 3 2
0 5 0 2
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
newcolfromfreecell spadea n2 n1 n1 n2
0
4
0 3 3 2
0 5 3 0
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n2 n1 n1 n2
0
4
0 1 2 3
0 3 3 2
0 5 3 0
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n2 n1 n1 n2
0
4
0 3 3 2
0 5 3 0
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n2 n1 n1 n2
0
4
0 3 3 2
0 4 2 4
0 5 3 0
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n2 n1 n1 n2
0
4
0 2 1 0
0 3 3 2
0 5 3 0
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n2 n1 n1 n2
0
4
0 3 3 2
0 5 3 0
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n2 n1 n1 n2
0
4
0 0 0 1
0 3 3 2
0 5 3 0
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n2 n1 n1 n2
0
4
0 3 3 2
0 5 3 0
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
newcolfromfreecell spadea n2 n1 n0 n1
0
4
0 3 3 2
0 5 1 3
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n2 n1 n0 n1
0
4
0 1 2 3
0 3 3 2
0 5 1 3
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n2 n1 n0 n1
0
4
0 3 3 2
0 5 1 3
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n2 n1 n0 n1
0
4
0 3 3 2
0 4 2 4
0 5 1 3
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n2 n1 n0 n1
0
4
0 2 1 0
0 3 3 2
0 5 1 3
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n2 n1 n0 n1
0
4
0 3 3 2
0 5 1 3
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n2 n1 n0 n1
0
4
0 0 0 1
0 3 3 2
0 5 1 3
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n2 n1 n0 n1
0
4
0 3 3 2
0 5 1 3
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
newcolfromfreecell spadea n2 n1 n3 n4
0
4
0 3 3 2
0 5 2 4
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n2 n1 n3 n4
0
4
0 1 2 3
0 3 3 2
0 5 2 4
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n2 n1 n3 n4
0
4
0 3 3 2
0 5 2 4
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n2 n1 n3 n4
0
4
0 3 3 2
0 4 2 4
0 5 2 4
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n2 n1 n3 n4
0
4
0 2 1 0
0 3 3 2
0 5 2 4
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n2 n1 n3 n4
0
4
0 3 3 2
0 5 2 4
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n2 n1 n3 n4
0
4
0 0 0 1
0 3 3 2
0 5 2 4
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n2 n1 n3 n4
0
4
0 3 3 2
0 5 2 4
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
sendtofree-b spadea n2 n1 n0 n1
0
4
0 3 4 2
0 5 0 3
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b spadea n1 n0 n0 n1
0
4
0 3 4 2
0 5 3 1
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b spadea n3 n2 n0 n1
0
4
0 3 4 2
0 5 2 0
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b spadea n2 n1 n1 n2
0
4
0 3 2 3
0 5 0 3
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b spadea n1 n0 n1 n2
0
4
0 3 2 3
0 5 3 1
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b spadea n3 n2 n1 n2
0
4
0 3 2 3
0 5 2 0
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b spadea n2 n1 n2 n3
0
4
0 3 3 0
0 5 0 3
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b spadea n1 n0 n2 n3
0
4
0 3 3 0
0 5 3 1
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b spadea n3 n2 n2 n3
0
4
0 3 3 0
0 5 2 0
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n2 n1 n0 n1
0
4
0 1 3 2
0 3 4 2
0 5 0 3
0 14 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n1 n0 n0 n1
0
4
0 1 3 2
0 3 4 2
0 5 3 1
0 14 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n3 n2 n0 n1
0
4
0 1 3 2
0 3 4 2
0 5 2 0
0 14 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n2 n1 n1 n2
0
4
0 1 3 2
0 3 2 3
0 5 0 3
0 14 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n1 n0 n1 n2
0
4
0 1 3 2
0 3 2 3
0 5 3 1
0 14 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n3 n2 n1 n2
0
4
0 1 3 2
0 3 2 3
0 5 2 0
0 14 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n2 n1 n2 n3
0
4
0 1 3 2
0 3 3 0
0 5 0 3
0 14 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n1 n0 n2 n3
0
4
0 1 3 2
0 3 3 0
0 5 3 1
0 14 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n3 n2 n2 n3
0
4
0 1 3 2
0 3 3 0
0 5 2 0
0 14 0 1
0
end_operator
begin_operator
sendtofree-b club2 n2 n1 n0 n1
0
4
0 3 4 2
0 5 0 3
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b club2 n1 n0 n0 n1
0
4
0 3 4 2
0 5 3 1
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b club2 n3 n2 n0 n1
0
4
0 3 4 2
0 5 2 0
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b club2 n2 n1 n1 n2
0
4
0 3 2 3
0 5 0 3
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b club2 n1 n0 n1 n2
0
4
0 3 2 3
0 5 3 1
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b club2 n3 n2 n1 n2
0
4
0 3 2 3
0 5 2 0
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b club2 n2 n1 n2 n3
0
4
0 3 3 0
0 5 0 3
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b club2 n1 n0 n2 n3
0
4
0 3 3 0
0 5 3 1
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b club2 n3 n2 n2 n3
0
4
0 3 3 0
0 5 2 0
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n2 n1 n0 n1
0
4
0 3 4 2
0 4 4 2
0 5 0 3
0 19 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n1 n0 n0 n1
0
4
0 3 4 2
0 4 4 2
0 5 3 1
0 19 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n3 n2 n0 n1
0
4
0 3 4 2
0 4 4 2
0 5 2 0
0 19 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n2 n1 n1 n2
0
4
0 3 2 3
0 4 4 2
0 5 0 3
0 19 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n1 n0 n1 n2
0
4
0 3 2 3
0 4 4 2
0 5 3 1
0 19 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n3 n2 n1 n2
0
4
0 3 2 3
0 4 4 2
0 5 2 0
0 19 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n2 n1 n2 n3
0
4
0 3 3 0
0 4 4 2
0 5 0 3
0 19 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n1 n0 n2 n3
0
4
0 3 3 0
0 4 4 2
0 5 3 1
0 19 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n3 n2 n2 n3
0
4
0 3 3 0
0 4 4 2
0 5 2 0
0 19 0 1
0
end_operator
begin_operator
move-b spadea heart2 n0 n1
1
15 0
3
0 3 4 2
0 4 4 3
0 9 0 3
0
end_operator
begin_operator
move-b spadea heart2 n1 n2
1
15 0
3
0 3 2 3
0 4 4 3
0 9 0 3
0
end_operator
begin_operator
move-b spadea heart2 n2 n3
1
15 0
3
0 3 3 0
0 4 4 3
0 9 0 3
0
end_operator
begin_operator
move-b spadea diamond2 n0 n1
1
15 0
3
0 0 1 5
0 3 4 2
0 9 0 3
0
end_operator
begin_operator
move-b spadea diamond2 n1 n2
1
15 0
3
0 0 1 5
0 3 2 3
0 9 0 3
0
end_operator
begin_operator
move-b spadea diamond2 n2 n3
1
15 0
3
0 0 1 5
0 3 3 0
0 9 0 3
0
end_operator
begin_operator
move-b diamonda club2 n0 n1
1
14 0
3
0 1 3 1
0 3 4 2
0 21 0 1
0
end_operator
begin_operator
move-b diamonda club2 n1 n2
1
14 0
3
0 1 3 1
0 3 2 3
0 21 0 1
0
end_operator
begin_operator
move-b diamonda club2 n2 n3
1
14 0
3
0 1 3 1
0 3 3 0
0 21 0 1
0
end_operator
begin_operator
move-b diamonda spade2 n0 n1
1
14 0
3
0 1 3 0
0 2 0 5
0 3 4 2
0
end_operator
begin_operator
move-b diamonda spade2 n1 n2
1
14 0
3
0 1 3 0
0 2 0 5
0 3 2 3
0
end_operator
begin_operator
move-b diamonda spade2 n2 n3
1
14 0
3
0 1 3 0
0 2 0 5
0 3 3 0
0
end_operator
begin_operator
sendtohome heart2 cluba heart n2 hearta n1
0
3
0 4 4 0
0 6 2 4
0 7 1 3
0
end_operator
begin_operator
homefromfreecell heart2 heart n2 hearta n1 n2 n3
0
3
0 4 2 0
0 5 0 2
0 6 2 4
0
end_operator
begin_operator
homefromfreecell heart2 heart n2 hearta n1 n1 n2
0
3
0 4 2 0
0 5 3 0
0 6 2 4
0
end_operator
begin_operator
homefromfreecell heart2 heart n2 hearta n1 n0 n1
0
3
0 4 2 0
0 5 1 3
0 6 2 4
0
end_operator
begin_operator
homefromfreecell heart2 heart n2 hearta n1 n3 n4
0
3
0 4 2 0
0 5 2 4
0 6 2 4
0
end_operator
begin_operator
sendtohome club2 diamond2 club n2 cluba n1
0
4
0 0 3 1
0 7 0 4
0 8 -1 2
0 21 0 1
0
end_operator
begin_operator
homefromfreecell club2 club n2 cluba n1 n2 n3
0
3
0 5 0 2
0 7 0 4
0 8 0 2
0
end_operator
begin_operator
homefromfreecell club2 club n2 cluba n1 n1 n2
0
3
0 5 3 0
0 7 0 4
0 8 0 2
0
end_operator
begin_operator
homefromfreecell club2 club n2 cluba n1 n0 n1
0
3
0 5 1 3
0 7 0 4
0 8 0 2
0
end_operator
begin_operator
homefromfreecell club2 club n2 cluba n1 n3 n4
0
3
0 5 2 4
0 7 0 4
0 8 0 2
0
end_operator
begin_operator
sendtofree spadea spade2 n4 n3
0
4
0 2 2 0
0 5 4 2
0 9 -1 1
0 15 0 1
0
end_operator
begin_operator
sendtofree diamonda hearta n4 n3
0
4
0 1 4 2
0 5 4 2
0 14 0 1
0 20 -1 0
0
end_operator
begin_operator
sendtofree club2 diamond2 n4 n3
0
4
0 0 3 1
0 5 4 2
0 8 -1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree heart2 cluba n4 n3
0
3
0 4 4 2
0 5 4 2
0 7 1 3
0
end_operator
begin_operator
sendtofree spadea heart2 n4 n3
0
4
0 4 3 4
0 5 4 2
0 9 -1 1
0 15 0 1
0
end_operator
begin_operator
sendtofree diamonda club2 n4 n3
0
4
0 1 1 2
0 5 4 2
0 14 0 1
0 21 -1 0
0
end_operator
begin_operator
sendtofree diamonda spade2 n4 n3
0
4
0 1 0 2
0 2 -1 0
0 5 4 2
0 14 0 1
0
end_operator
begin_operator
sendtofree hearta club2 n4 n3
0
4
0 5 4 2
0 6 3 0
0 20 0 1
0 21 -1 0
0
end_operator
begin_operator
sendtofree spadea diamond2 n4 n3
0
4
0 0 5 1
0 5 4 2
0 9 -1 1
0 15 0 1
0
end_operator
begin_operator
sendtofree cluba heart2 n4 n3
0
3
0 4 1 4
0 5 4 2
0 7 3 2
0
end_operator
begin_operator
sendtofree hearta spade2 n4 n3
0
4
0 2 3 0
0 5 4 2
0 6 -1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree cluba diamond2 n4 n3
0
3
0 0 2 1
0 5 4 2
0 7 3 2
0
end_operator
begin_operator
sendtofree-b spade2 n4 n3 n0 n1
0
4
0 2 0 1
0 3 4 2
0 5 4 2
0 18 0 1
0
end_operator
begin_operator
sendtofree-b hearta n4 n3 n0 n1
0
4
0 3 4 2
0 5 4 2
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n4 n3 n0 n1
0
4
0 0 1 0
0 3 4 2
0 5 4 2
0 16 0 1
0
end_operator
begin_operator
sendtofree-b cluba n4 n3 n0 n1
0
4
0 3 4 2
0 5 4 2
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtofree-b spadea n4 n3 n0 n1
0
4
0 3 4 2
0 5 4 2
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n4 n3 n0 n1
0
4
0 1 3 2
0 3 4 2
0 5 4 2
0 14 0 1
0
end_operator
begin_operator
sendtofree-b club2 n4 n3 n0 n1
0
4
0 3 4 2
0 5 4 2
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n4 n3 n0 n1
0
4
0 3 4 2
0 4 4 2
0 5 4 2
0 19 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n4 n3 n1 n2
0
4
0 2 0 1
0 3 2 3
0 5 4 2
0 18 0 1
0
end_operator
begin_operator
sendtofree-b hearta n4 n3 n1 n2
0
4
0 3 2 3
0 5 4 2
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n4 n3 n1 n2
0
4
0 0 1 0
0 3 2 3
0 5 4 2
0 16 0 1
0
end_operator
begin_operator
sendtofree-b cluba n4 n3 n1 n2
0
4
0 3 2 3
0 5 4 2
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtofree-b spadea n4 n3 n1 n2
0
4
0 3 2 3
0 5 4 2
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n4 n3 n1 n2
0
4
0 1 3 2
0 3 2 3
0 5 4 2
0 14 0 1
0
end_operator
begin_operator
sendtofree-b club2 n4 n3 n1 n2
0
4
0 3 2 3
0 5 4 2
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n4 n3 n1 n2
0
4
0 3 2 3
0 4 4 2
0 5 4 2
0 19 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n4 n3 n2 n3
0
4
0 2 0 1
0 3 3 0
0 5 4 2
0 18 0 1
0
end_operator
begin_operator
sendtofree-b hearta n4 n3 n2 n3
0
4
0 3 3 0
0 5 4 2
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n4 n3 n2 n3
0
4
0 0 1 0
0 3 3 0
0 5 4 2
0 16 0 1
0
end_operator
begin_operator
sendtofree-b cluba n4 n3 n2 n3
0
4
0 3 3 0
0 5 4 2
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtofree-b spadea n4 n3 n2 n3
0
4
0 3 3 0
0 5 4 2
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n4 n3 n2 n3
0
4
0 1 3 2
0 3 3 0
0 5 4 2
0 14 0 1
0
end_operator
begin_operator
sendtofree-b club2 n4 n3 n2 n3
0
4
0 3 3 0
0 5 4 2
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n4 n3 n2 n3
0
4
0 3 3 0
0 4 4 2
0 5 4 2
0 19 0 1
0
end_operator
begin_operator
sendtohome-b spadea spade n1 spade0 n0 n0 n1
0
4
0 3 4 2
0 9 0 2
0 11 0 1
0 15 0 1
0
end_operator
begin_operator
sendtohome-b spadea spade n1 spade0 n0 n1 n2
0
4
0 3 2 3
0 9 0 2
0 11 0 1
0 15 0 1
0
end_operator
begin_operator
sendtohome-b spadea spade n1 spade0 n0 n2 n3
0
4
0 3 3 0
0 9 0 2
0 11 0 1
0 15 0 1
0
end_operator
begin_operator
sendtohome-b diamonda diamond n1 diamond0 n0 n0 n1
0
4
0 1 3 5
0 3 4 2
0 10 0 1
0 14 0 1
0
end_operator
begin_operator
sendtohome-b diamonda diamond n1 diamond0 n0 n1 n2
0
4
0 1 3 5
0 3 2 3
0 10 0 1
0 14 0 1
0
end_operator
begin_operator
sendtohome-b diamonda diamond n1 diamond0 n0 n2 n3
0
4
0 1 3 5
0 3 3 0
0 10 0 1
0 14 0 1
0
end_operator
begin_operator
sendtohome-b club2 club n2 cluba n1 n0 n1
0
4
0 3 4 2
0 7 0 4
0 8 1 2
0 21 0 1
0
end_operator
begin_operator
sendtohome-b club2 club n2 cluba n1 n1 n2
0
4
0 3 2 3
0 7 0 4
0 8 1 2
0 21 0 1
0
end_operator
begin_operator
sendtohome-b club2 club n2 cluba n1 n2 n3
0
4
0 3 3 0
0 7 0 4
0 8 1 2
0 21 0 1
0
end_operator
begin_operator
sendtohome-b heart2 heart n2 hearta n1 n0 n1
0
4
0 3 4 2
0 4 4 0
0 6 2 4
0 19 0 1
0
end_operator
begin_operator
sendtohome-b heart2 heart n2 hearta n1 n1 n2
0
4
0 3 2 3
0 4 4 0
0 6 2 4
0 19 0 1
0
end_operator
begin_operator
sendtohome-b heart2 heart n2 hearta n1 n2 n3
0
4
0 3 3 0
0 4 4 0
0 6 2 4
0 19 0 1
0
end_operator
begin_operator
move-b hearta club2 n3 n4
1
20 0
3
0 3 0 1
0 6 1 3
0 21 0 1
0
end_operator
begin_operator
move-b cluba heart2 n3 n4
1
7 3
3
0 3 0 1
0 4 4 1
0 17 0 1
0
end_operator
begin_operator
move-b hearta spade2 n3 n4
1
20 0
3
0 2 0 3
0 3 0 1
0 6 1 4
0
end_operator
begin_operator
move-b cluba diamond2 n3 n4
1
7 3
3
0 0 1 2
0 3 0 1
0 17 0 1
0
end_operator
begin_operator
move-b spadea heart2 n3 n4
1
15 0
3
0 3 0 1
0 4 4 3
0 9 0 3
0
end_operator
begin_operator
move-b spadea diamond2 n3 n4
1
15 0
3
0 0 1 5
0 3 0 1
0 9 0 3
0
end_operator
begin_operator
move-b diamonda club2 n3 n4
1
14 0
3
0 1 3 1
0 3 0 1
0 21 0 1
0
end_operator
begin_operator
move-b diamonda spade2 n3 n4
1
14 0
3
0 1 3 0
0 2 0 5
0 3 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n2 n1 n3 n4
0
4
0 2 0 1
0 3 0 1
0 5 0 3
0 18 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n1 n0 n3 n4
0
4
0 2 0 1
0 3 0 1
0 5 3 1
0 18 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n3 n2 n3 n4
0
4
0 2 0 1
0 3 0 1
0 5 2 0
0 18 0 1
0
end_operator
begin_operator
sendtofree-b spade2 n4 n3 n3 n4
0
4
0 2 0 1
0 3 0 1
0 5 4 2
0 18 0 1
0
end_operator
begin_operator
sendtofree-b hearta n2 n1 n3 n4
0
4
0 3 0 1
0 5 0 3
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b hearta n1 n0 n3 n4
0
4
0 3 0 1
0 5 3 1
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b hearta n3 n2 n3 n4
0
4
0 3 0 1
0 5 2 0
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b hearta n4 n3 n3 n4
0
4
0 3 0 1
0 5 4 2
0 6 1 0
0 20 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n2 n1 n3 n4
0
4
0 0 1 0
0 3 0 1
0 5 0 3
0 16 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n1 n0 n3 n4
0
4
0 0 1 0
0 3 0 1
0 5 3 1
0 16 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n3 n2 n3 n4
0
4
0 0 1 0
0 3 0 1
0 5 2 0
0 16 0 1
0
end_operator
begin_operator
sendtofree-b diamond2 n4 n3 n3 n4
0
4
0 0 1 0
0 3 0 1
0 5 4 2
0 16 0 1
0
end_operator
begin_operator
sendtofree-b cluba n2 n1 n3 n4
0
4
0 3 0 1
0 5 0 3
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtofree-b cluba n1 n0 n3 n4
0
4
0 3 0 1
0 5 3 1
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtofree-b cluba n3 n2 n3 n4
0
4
0 3 0 1
0 5 2 0
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtofree-b cluba n4 n3 n3 n4
0
4
0 3 0 1
0 5 4 2
0 7 3 2
0 17 0 1
0
end_operator
begin_operator
sendtofree-b spadea n2 n1 n3 n4
0
4
0 3 0 1
0 5 0 3
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b spadea n1 n0 n3 n4
0
4
0 3 0 1
0 5 3 1
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b spadea n3 n2 n3 n4
0
4
0 3 0 1
0 5 2 0
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b spadea n4 n3 n3 n4
0
4
0 3 0 1
0 5 4 2
0 9 0 1
0 15 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n2 n1 n3 n4
0
4
0 1 3 2
0 3 0 1
0 5 0 3
0 14 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n1 n0 n3 n4
0
4
0 1 3 2
0 3 0 1
0 5 3 1
0 14 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n3 n2 n3 n4
0
4
0 1 3 2
0 3 0 1
0 5 2 0
0 14 0 1
0
end_operator
begin_operator
sendtofree-b diamonda n4 n3 n3 n4
0
4
0 1 3 2
0 3 0 1
0 5 4 2
0 14 0 1
0
end_operator
begin_operator
sendtofree-b club2 n2 n1 n3 n4
0
4
0 3 0 1
0 5 0 3
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b club2 n1 n0 n3 n4
0
4
0 3 0 1
0 5 3 1
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b club2 n3 n2 n3 n4
0
4
0 3 0 1
0 5 2 0
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b club2 n4 n3 n3 n4
0
4
0 3 0 1
0 5 4 2
0 8 1 0
0 21 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n2 n1 n3 n4
0
4
0 3 0 1
0 4 4 2
0 5 0 3
0 19 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n1 n0 n3 n4
0
4
0 3 0 1
0 4 4 2
0 5 3 1
0 19 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n3 n2 n3 n4
0
4
0 3 0 1
0 4 4 2
0 5 2 0
0 19 0 1
0
end_operator
begin_operator
sendtofree-b heart2 n4 n3 n3 n4
0
4
0 3 0 1
0 4 4 2
0 5 4 2
0 19 0 1
0
end_operator
begin_operator
sendtonewcol spadea spade2 n3 n2
1
15 0
3
0 2 2 0
0 3 0 3
0 9 -1 0
0
end_operator
begin_operator
sendtonewcol diamonda hearta n3 n2
1
14 0
3
0 1 4 3
0 3 0 3
0 20 -1 0
0
end_operator
begin_operator
sendtonewcol club2 diamond2 n3 n2
1
21 0
3
0 0 3 1
0 3 0 3
0 8 -1 1
0
end_operator
begin_operator
sendtonewcol heart2 cluba n3 n2
1
4 4
3
0 3 0 3
0 7 1 3
0 19 -1 0
0
end_operator
begin_operator
sendtonewcol spadea heart2 n3 n2
1
15 0
3
0 3 0 3
0 4 3 4
0 9 -1 0
0
end_operator
begin_operator
sendtonewcol diamonda club2 n3 n2
1
14 0
3
0 1 1 3
0 3 0 3
0 21 -1 0
0
end_operator
begin_operator
sendtonewcol diamonda spade2 n3 n2
1
14 0
3
0 1 0 3
0 2 -1 0
0 3 0 3
0
end_operator
begin_operator
sendtonewcol hearta club2 n3 n2
1
20 0
3
0 3 0 3
0 6 3 1
0 21 -1 0
0
end_operator
begin_operator
sendtonewcol spadea diamond2 n3 n2
1
15 0
3
0 0 5 1
0 3 0 3
0 9 -1 0
0
end_operator
begin_operator
sendtonewcol cluba heart2 n3 n2
1
7 3
3
0 3 0 3
0 4 1 4
0 17 -1 0
0
end_operator
begin_operator
sendtonewcol hearta spade2 n3 n2
1
20 0
3
0 2 3 0
0 3 0 3
0 6 -1 1
0
end_operator
begin_operator
sendtonewcol cluba diamond2 n3 n2
1
7 3
3
0 0 2 1
0 3 0 3
0 17 -1 0
0
end_operator
begin_operator
sendtohome-b hearta heart n1 heart0 n0 n3 n4
0
4
0 3 0 1
0 6 1 2
0 12 0 1
0 20 0 1
0
end_operator
begin_operator
sendtohome-b cluba club n1 club0 n0 n3 n4
0
4
0 3 0 1
0 7 3 0
0 13 0 1
0 17 0 1
0
end_operator
begin_operator
sendtohome-b diamond2 diamond n2 diamonda n1 n3 n4
0
4
0 0 1 4
0 1 5 6
0 3 0 1
0 16 0 1
0
end_operator
begin_operator
sendtohome-b spade2 spade n2 spadea n1 n3 n4
0
4
0 2 0 4
0 3 0 1
0 9 2 3
0 18 0 1
0
end_operator
begin_operator
sendtohome-b spadea spade n1 spade0 n0 n3 n4
0
4
0 3 0 1
0 9 0 2
0 11 0 1
0 15 0 1
0
end_operator
begin_operator
sendtohome-b diamonda diamond n1 diamond0 n0 n3 n4
0
4
0 1 3 5
0 3 0 1
0 10 0 1
0 14 0 1
0
end_operator
begin_operator
sendtohome-b club2 club n2 cluba n1 n3 n4
0
4
0 3 0 1
0 7 0 4
0 8 1 2
0 21 0 1
0
end_operator
begin_operator
sendtohome-b heart2 heart n2 hearta n1 n3 n4
0
4
0 3 0 1
0 4 4 0
0 6 2 4
0 19 0 1
0
end_operator
begin_operator
newcolfromfreecell spadea n3 n2 n2 n3
0
4
0 3 0 3
0 5 0 2
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n3 n2 n2 n3
0
4
0 1 2 3
0 3 0 3
0 5 0 2
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n3 n2 n2 n3
0
4
0 3 0 3
0 5 0 2
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n3 n2 n2 n3
0
4
0 3 0 3
0 4 2 4
0 5 0 2
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n3 n2 n2 n3
0
4
0 2 1 0
0 3 0 3
0 5 0 2
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n3 n2 n2 n3
0
4
0 3 0 3
0 5 0 2
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n3 n2 n2 n3
0
4
0 0 0 1
0 3 0 3
0 5 0 2
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n3 n2 n2 n3
0
4
0 3 0 3
0 5 0 2
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
newcolfromfreecell spadea n3 n2 n1 n2
0
4
0 3 0 3
0 5 3 0
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n3 n2 n1 n2
0
4
0 1 2 3
0 3 0 3
0 5 3 0
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n3 n2 n1 n2
0
4
0 3 0 3
0 5 3 0
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n3 n2 n1 n2
0
4
0 3 0 3
0 4 2 4
0 5 3 0
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n3 n2 n1 n2
0
4
0 2 1 0
0 3 0 3
0 5 3 0
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n3 n2 n1 n2
0
4
0 3 0 3
0 5 3 0
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n3 n2 n1 n2
0
4
0 0 0 1
0 3 0 3
0 5 3 0
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n3 n2 n1 n2
0
4
0 3 0 3
0 5 3 0
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
newcolfromfreecell spadea n3 n2 n0 n1
0
4
0 3 0 3
0 5 1 3
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n3 n2 n0 n1
0
4
0 1 2 3
0 3 0 3
0 5 1 3
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n3 n2 n0 n1
0
4
0 3 0 3
0 5 1 3
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n3 n2 n0 n1
0
4
0 3 0 3
0 4 2 4
0 5 1 3
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n3 n2 n0 n1
0
4
0 2 1 0
0 3 0 3
0 5 1 3
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n3 n2 n0 n1
0
4
0 3 0 3
0 5 1 3
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n3 n2 n0 n1
0
4
0 0 0 1
0 3 0 3
0 5 1 3
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n3 n2 n0 n1
0
4
0 3 0 3
0 5 1 3
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
newcolfromfreecell spadea n3 n2 n3 n4
0
4
0 3 0 3
0 5 2 4
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n3 n2 n3 n4
0
4
0 1 2 3
0 3 0 3
0 5 2 4
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n3 n2 n3 n4
0
4
0 3 0 3
0 5 2 4
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n3 n2 n3 n4
0
4
0 3 0 3
0 4 2 4
0 5 2 4
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n3 n2 n3 n4
0
4
0 2 1 0
0 3 0 3
0 5 2 4
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n3 n2 n3 n4
0
4
0 3 0 3
0 5 2 4
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n3 n2 n3 n4
0
4
0 0 0 1
0 3 0 3
0 5 2 4
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n3 n2 n3 n4
0
4
0 3 0 3
0 5 2 4
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
sendtonewcol spadea spade2 n4 n3
1
15 0
3
0 2 2 0
0 3 1 0
0 9 -1 0
0
end_operator
begin_operator
sendtonewcol diamonda hearta n4 n3
1
14 0
3
0 1 4 3
0 3 1 0
0 20 -1 0
0
end_operator
begin_operator
sendtonewcol club2 diamond2 n4 n3
1
21 0
3
0 0 3 1
0 3 1 0
0 8 -1 1
0
end_operator
begin_operator
sendtonewcol heart2 cluba n4 n3
1
4 4
3
0 3 1 0
0 7 1 3
0 19 -1 0
0
end_operator
begin_operator
sendtonewcol spadea heart2 n4 n3
1
15 0
3
0 3 1 0
0 4 3 4
0 9 -1 0
0
end_operator
begin_operator
sendtonewcol diamonda club2 n4 n3
1
14 0
3
0 1 1 3
0 3 1 0
0 21 -1 0
0
end_operator
begin_operator
sendtonewcol diamonda spade2 n4 n3
1
14 0
3
0 1 0 3
0 2 -1 0
0 3 1 0
0
end_operator
begin_operator
sendtonewcol hearta club2 n4 n3
1
20 0
3
0 3 1 0
0 6 3 1
0 21 -1 0
0
end_operator
begin_operator
sendtonewcol spadea diamond2 n4 n3
1
15 0
3
0 0 5 1
0 3 1 0
0 9 -1 0
0
end_operator
begin_operator
sendtonewcol cluba heart2 n4 n3
1
7 3
3
0 3 1 0
0 4 1 4
0 17 -1 0
0
end_operator
begin_operator
sendtonewcol hearta spade2 n4 n3
1
20 0
3
0 2 3 0
0 3 1 0
0 6 -1 1
0
end_operator
begin_operator
sendtonewcol cluba diamond2 n4 n3
1
7 3
3
0 0 2 1
0 3 1 0
0 17 -1 0
0
end_operator
begin_operator
newcolfromfreecell spadea n4 n3 n2 n3
0
4
0 3 1 0
0 5 0 2
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n4 n3 n2 n3
0
4
0 1 2 3
0 3 1 0
0 5 0 2
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n4 n3 n2 n3
0
4
0 3 1 0
0 5 0 2
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n4 n3 n2 n3
0
4
0 3 1 0
0 4 2 4
0 5 0 2
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n4 n3 n2 n3
0
4
0 2 1 0
0 3 1 0
0 5 0 2
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n4 n3 n2 n3
0
4
0 3 1 0
0 5 0 2
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n4 n3 n2 n3
0
4
0 0 0 1
0 3 1 0
0 5 0 2
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n4 n3 n2 n3
0
4
0 3 1 0
0 5 0 2
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
newcolfromfreecell spadea n4 n3 n1 n2
0
4
0 3 1 0
0 5 3 0
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n4 n3 n1 n2
0
4
0 1 2 3
0 3 1 0
0 5 3 0
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n4 n3 n1 n2
0
4
0 3 1 0
0 5 3 0
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n4 n3 n1 n2
0
4
0 3 1 0
0 4 2 4
0 5 3 0
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n4 n3 n1 n2
0
4
0 2 1 0
0 3 1 0
0 5 3 0
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n4 n3 n1 n2
0
4
0 3 1 0
0 5 3 0
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n4 n3 n1 n2
0
4
0 0 0 1
0 3 1 0
0 5 3 0
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n4 n3 n1 n2
0
4
0 3 1 0
0 5 3 0
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
newcolfromfreecell spadea n4 n3 n0 n1
0
4
0 3 1 0
0 5 1 3
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n4 n3 n0 n1
0
4
0 1 2 3
0 3 1 0
0 5 1 3
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n4 n3 n0 n1
0
4
0 3 1 0
0 5 1 3
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n4 n3 n0 n1
0
4
0 3 1 0
0 4 2 4
0 5 1 3
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n4 n3 n0 n1
0
4
0 2 1 0
0 3 1 0
0 5 1 3
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n4 n3 n0 n1
0
4
0 3 1 0
0 5 1 3
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n4 n3 n0 n1
0
4
0 0 0 1
0 3 1 0
0 5 1 3
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n4 n3 n0 n1
0
4
0 3 1 0
0 5 1 3
0 7 2 3
0 17 -1 0
0
end_operator
begin_operator
newcolfromfreecell spadea n4 n3 n3 n4
0
4
0 3 1 0
0 5 2 4
0 9 1 0
0 15 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamonda n4 n3 n3 n4
0
4
0 1 2 3
0 3 1 0
0 5 2 4
0 14 -1 0
0
end_operator
begin_operator
newcolfromfreecell club2 n4 n3 n3 n4
0
4
0 3 1 0
0 5 2 4
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
newcolfromfreecell heart2 n4 n3 n3 n4
0
4
0 3 1 0
0 4 2 4
0 5 2 4
0 19 -1 0
0
end_operator
begin_operator
newcolfromfreecell spade2 n4 n3 n3 n4
0
4
0 2 1 0
0 3 1 0
0 5 2 4
0 18 -1 0
0
end_operator
begin_operator
newcolfromfreecell hearta n4 n3 n3 n4
0
4
0 3 1 0
0 5 2 4
0 6 0 1
0 20 -1 0
0
end_operator
begin_operator
newcolfromfreecell diamond2 n4 n3 n3 n4
0
4
0 0 0 1
0 3 1 0
0 5 2 4
0 16 -1 0
0
end_operator
begin_operator
newcolfromfreecell cluba n4 n3 n3 n4
0
4
0 3 1 0
0 5 2 4
0 7 2 3
0 17 -1 0
0
end_operator
0
