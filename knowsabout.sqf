private ["_level"];

_level = 0;

{
    if (side _x != side player) then {
        _level = _level + _x knowsabout player; 
    };
} forEach allUnits;

[side player, "HQ"] sidechat format ["Level %1", _level];
