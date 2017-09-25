//nul = [veh, cible1, cible 2, cible3, cible4] execVM "fnc\randomtankfire.sqf";
_tank = _this select 0;
_t1 = _this select 1;
_t2 = _this select 2;
_t3 = _this select 3;
_t4 = _this select 4;


_tank engineOn true;
sleep 10;
while {alive _tank} do {

_tank setVehicleAmmo 1;
_targets = [_t1 , _t2, _t3, _t4] call BIS_fnc_selectRandom;
_delay = random [1 , 15 , 30];

_tank doWatch _targets;
sleep 2;
_tank doTarget _targets;
sleep 0.6;
_tank fire ((weapons _tank) select 0);
sleep 10;
sleep _delay;
};

