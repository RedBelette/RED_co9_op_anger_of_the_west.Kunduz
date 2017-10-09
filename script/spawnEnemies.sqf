_spawnPos = _this select 0;
_attackPos = _this select 1;
_number = _this select 2;
_time = _this select 3;

[east, [
		["LOP_AM_OPF_Infantry_SL", "LOP_AM_OPF_Infantry_GL", "LOP_AM_OPF_Infantry_AR"],
		["LOP_AM_OPF_Infantry_SL", "LOP_AM_OPF_Infantry_Rifleman_2", "LOP_AM_OPF_Infantry_Rifleman_2"],
		["LOP_AM_OPF_Infantry_SL", "LOP_AM_OPF_Infantry_Rifleman_2", "LOP_AM_OPF_Infantry_Rifleman_2"]
	], _spawnPos, _attackPos, 10, true, _number, _time] call TGV_fnc_spawnAndAttackEachTime;