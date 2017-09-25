params ["_side", "_types", "_spawnPos", "_seekAndDestoyPos", "_radius", "_removeAssignedWaypoints"];

diag_log ["TGV_fnc_spawnAndAttack", _side, _types, _spawnPos, _seekAndDestoyPos, _radius, _removeAssignedWaypoints];

_createdGroup = [_side, _types, _spawnPos] call TGV_fnc_spawnUnits;

[_createdGroup, _seekAndDestoyPos, _radius, _removeAssignedWaypoints] call TGV_fnc_seekAndDestroy;

_createdGroup