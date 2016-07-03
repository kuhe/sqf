make_str_assessment = false;

bfs = {alive _x && side _x == WEST} count allUnits;
gfs = {alive _x && side _x == RESISTANCE} count allUnits;

hint format ["GER %1 US %2",bfs,gfs];

make_str_assessment = true;
