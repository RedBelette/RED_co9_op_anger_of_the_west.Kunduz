_spawnPos = _this select 0;
_attackPos = _this select 1;

[WEST, ["B_MBT_01_cannon_F", "B_APC_Tracked_01_AA_F", "B_MBT_01_cannon_F", "B_APC_Tracked_01_AA_F"], _spawnPos, _attackPos, 10, true] call TGV_fnc_spawnAndAttack;