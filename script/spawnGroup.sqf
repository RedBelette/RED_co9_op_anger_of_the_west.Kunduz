_spawnPos = _this select 0;
_attackPos = _this select 1;

[WEST, [
		["rhsusf_army_ocp_officer", "rhsusf_army_ocp_medic", "rhsusf_army_ocp_fso"],
		["rhsusf_army_ocp_squadleader", "rhsusf_army_ocp_grenadier", "rhsusf_army_ocp_rifleman"],
		["rhsusf_army_ocp_squadleader", "rhsusf_army_ocp_rifleman", "rhsusf_army_ocp_autorifleman"]
	], _spawnPos, _attackPos, 10, true, 2, 1800] call MIS_fnc_spawnAndAttackEachTime;