make_str_assessment = false;

bfs = {alive _x && side _x == WEST} count allUnits;
gfs = {alive _x && side _x == RESISTANCE} count allUnits;
rfs = {alive _x && side _x == EAST} count allUnits;

hint format ["B %1 G %2 R %3",bfs,gfs,rfs];

make_str_assessment = true;
