_minTriggerReddition = _this select 0;

_showReditionHint = true;
_showReditionHintAlreadyDone = false;


_eastCount = east countSide allUnits;
diag_log ["prepareRedition", _eastCount, _minTriggerReddition];
if (startTheGame) then {
	if (_eastCount < _minTriggerReddition) then {
		{
			if (side _x == east) then {
				_x playmove "AmovPercMstpSsurWnonDnon";
				[_x, "AmovPercMstpSsurWnonDnon"] remoteExec ["playMove"];
				_x disableAI "ANIM";
				_x setCaptive true;
			};
		} forEach allUnits;
		redition = true;
	};
};

if (_showReditionHint and !_showReditionHintAlreadyDone and redition) then {
	_showReditionHintAlreadyDone = true;
	["Mission terminée, les talibans sont en reddition."] remoteExec ["hint"];
};