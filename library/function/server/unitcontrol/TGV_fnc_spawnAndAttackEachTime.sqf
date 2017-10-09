params ["_side", "_completesquad", "_spawnPos", "_seekAndDestoyPos", "_radius", "_removeAssignedWaypoints", "_maxTic", "_sleepValue"];

diag_log ["spawnAndAttackEachTime", _side, _completesquad, _spawnPos, _seekAndDestoyPos, _radius, _removeAssignedWaypoints, _maxTic, _sleepValue];

_tic = 0;
while {_tic < _maxTic} do {
	_tic = _tic + 1;

	{
		_types = _x;
		[_side, _types, _spawnPos, _seekAndDestoyPos, _radius, _removeAssignedWaypoints] call TGV_fnc_spawnAndAttack;
	} forEach _completesquad;

	sleep _sleepValue;

};
