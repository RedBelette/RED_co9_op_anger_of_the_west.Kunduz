
showCinemaBorder false;

playMusic "OutroMusic";

titleCut [" ", "BLACK OUT", 0];
sleep 1;

// position de départ de la caméra
_camera = "camera" camcreate [508.711,2727.72,0.7];
_camera cameraEffect ["internal", "back"];
_camera camSetTarget [2034.97,3078.53,1];
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
	[3213.5,1187.43,75],
	[2852.72,2837.28,100],
	[993.653,3365.53,200],
	[1144.73,2231.07,100],
	[2075.22,3009.21,75],
	[1498.22,2336.06,10]
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
	_camera camSetTarget [2034.97,3078.53,1];
	_camera camCommit 0;

	sleep 10;

	_i = _i + 1;

	titleCut [" ", "BLACK OUT", 1];
	sleep 1;
};

sleep 1;
titleCut [" ", "BLACK IN", 1];

endMission "end2";