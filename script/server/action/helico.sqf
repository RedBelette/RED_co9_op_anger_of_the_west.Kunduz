helicoGo = false;

_helicoGroup = _this select 0;
_attackPos = _this select 1;
_radius = _this select 2;

diag_log ["helico.sqf", _helicoGroup, _attackPos, _radius];

_helicoGroup setBehaviour "COMBAT";
_helicoGroup setCombatMode "RED";

{
	_x enableAI "ALL";
} forEach units _helicoGroup;

_helicoSave = "";
{
 if !(_helicoSave isEqualTo (vehicle _x)) then {
	  _helicoSave = vehicle _x;
	  _helicoSave land "NONE";
	  _helicoSave setFuel 1;
 };

} forEach units _helicoGroup;


[_helicoGroup, _attackPos, _radius] call CBA_fnc_taskAttack;