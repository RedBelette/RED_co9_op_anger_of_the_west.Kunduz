
_lines = [[[-25,1466,0],[5422,3599,0]], [[4275,2299,0], [345,3490,0]], [[1563,4860,0], [4193,2537,0]]];

_line = round(random [0, 1, 2]);
while {ambientFlyBy} do {

	if (_line > 2) then {
		_line = 0;
	};

	_timer = round(60 * random [5,15,30]);
	sleep _timer;

	_coordonne = _lines select _line;

	[_coordonne select 0,_coordonne select 1,150,"FULL","rhsusf_f22",WEST] call BIS_fnc_ambientFlyby;

	sleep 2;
	_line = _line + 1;
};