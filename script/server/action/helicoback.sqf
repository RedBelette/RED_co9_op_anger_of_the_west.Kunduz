while {(count (waypoints helico)) > 0} do
{
deleteWaypoint ((waypoints helico) select 0);
};

helico setBehaviour "CARELESS";
helico setCombatMode "BLUE";

helico addWaypoint [[4793.73,95.9654,0],0];

_helicoSave = "";
_helicos = [];
{
 if !(_helicoSave isEqualTo (vehicle _x)) then {
  _helicoSave = vehicle _x;
  _helicos pushBack _helicoSave;
 };

} forEach units helico;

{
	_heli = _x;

	[_heli] spawn {
		_heli = _this select 0;
		while {alive _heli and (_heli distance [4730.88,293.82,0]) < 300} do {
			_heli land "LAND";
		};
		while {alive _heli and isTouchingGround _heli} do {
			_heli engineOn false;
			while {(count (waypoints _heli)) > 0} do {
				deleteWaypoint ((waypoints _heli) select 0);
			};
		};
	};

} forEach _helicos;