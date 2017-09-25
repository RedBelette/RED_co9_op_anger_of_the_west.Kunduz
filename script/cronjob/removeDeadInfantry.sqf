_tic = _this select 0;

while {cronJobActivated} do {
	diag_log ["remoteAllDead", count allDead];
	{deleteVehicle _x} forEach allDead;
	sleep _tic;
};
