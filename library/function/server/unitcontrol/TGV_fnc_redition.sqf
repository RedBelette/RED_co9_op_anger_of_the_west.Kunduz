params ["_side", "_minTriggerReddition", "_"];

_sideCount = _side countSide allUnits;

_redition = false;

if (_sideCount < _minTriggerReddition) then {
	{
		if (side _x == _side) then {
			_x playmove "AmovPercMstpSsurWnonDnon";
			[_x, "AmovPercMstpSsurWnonDnon"] remoteExec ["playMove"];
			_x disableAI "ANIM";
			_x setCaptive true;
		};
	} forEach allUnits;
	_redition = true;
};
_redition;