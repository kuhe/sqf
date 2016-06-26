context = player;
[context] joinsilent grpNull;

units1 = nearestObjects [context, [], 5];

{
	if ((side _x == side context) && !(group _x == group context)) then {
		_ng = createGroup side context;
		[context] joinsilent (_ng);
		{[_x] joinsilent _ng;} foreach units group _x;
	}
} foreach units1;

{
	if (side leader _x == side context) then {
		context hcsetgroup [_x,""];
	}
} foreach allgroups;
