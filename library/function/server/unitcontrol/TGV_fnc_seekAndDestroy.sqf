params ["_groupOrObject", "_posOrLocationOrObject", "_radius", "_removeAssignedWaypoints"];

diag_log ["TGV_fnc_seekAndDestroy", _groupOrObject, _posOrLocationOrObject, _radius, _removeAssignedWaypoints];

if (isNil "_radius") then {
	_radius = 10;
};

if (isNil "_removeAssignedWaypoints") then {
	_removeAssignedWaypoints = true;
};

[_groupOrObject, _posOrLocationOrObject, _radius, _removeAssignedWaypoints] call CBA_fnc_taskAttack;