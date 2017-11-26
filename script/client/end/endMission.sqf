
showCinemaBorder false;

playMusic "OutroMusic";

titleCut [" ", "BLACK OUT", 0];
sleep 1;

// position de départ de la caméra
_camera = "camera" camcreate [508.711,2727.72,0.7];
_camera cameraEffect ["internal", "back"];
_camera camSetTarget player;
_camera camCommit 0;
true setCamUseTI 0;

sleep 1;

_handleGeneric = execVM "script\client\end\generic.sqf";
titleCut [" ", "BLACK IN", 1];

sleep 10;

titleCut [" ", "BLACK OUT", 1];
sleep 1;

_locations = [
	[560.433,2711,3],
	[553.072,2767.97,10],
	[532.365,2731.56,75],
	[594.655,2713.25,100],
	[410.086,2755.52,200],
	[508.711,2727.72,0.7]
];
_i = 0;
while {!scriptDone _handleGeneric} do {
	diag_log ["test", scriptDone _handleGeneric];
	titleCut [" ", "BLACK IN", 1];
	if (_i >= (count _locations)) then {
		_i = 0;
	};

	_camera = "camera" camcreate (_locations select _i);
	_camera cameraEffect ["internal", "back"];
	_camera camSetTarget player;
	_camera camCommit 0;

	sleep 10;

	_i = _i + 1;

	titleCut [" ", "BLACK OUT", 1];
	sleep 1;
};

sleep 1;
titleCut [" ", "BLACK IN", 1];

/*endMission "end2";*/
player cameraEffect ["terminate","back"];
camDestroy _camera;