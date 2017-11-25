_thisGroup = _this select 0;

/*{
	_x disableAI "ALL";
} forEach units _thisGroup;*/

_helicoSave = "";
{
 if !(_helicoSave isEqualTo (vehicle _x)) then {
	  _helicoSave = vehicle _x;
	  _helicoSave setFuel 0;
 };

} forEach units _thisGroup;