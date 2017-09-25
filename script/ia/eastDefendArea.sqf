{
	if (side _x == east) then {
		[_x] call CBA_fnc_taskDefend;
	};
} forEach allGroups;