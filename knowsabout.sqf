private ["_level", "_n"];

_level = 0;
_n = 0;

{
    if (side _x != side player) then {
        _level = _level + (_x knowsabout player); 
        _n = _n + 1;
    };
} forEach allUnits;

[side player, "HQ"] sidechat format ["Level %2:%1", _level, _n];
