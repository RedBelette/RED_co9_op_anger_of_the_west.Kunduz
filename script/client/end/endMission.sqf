
showCinemaBorder false;

playMusic "OutroMusic";

titleCut [" ", "BLACK OUT", 0];
sleep 1;

// téléportation
_teleportPosBivouac = player getVariable "teleportPosBivouac";
if (!isNil "_teleportPosBivouac") then {
	player setDir (player getVariable "bivouacDir");
	player setPos _teleportPosBivouac;
	player switchMove (player getVariable "bivouacAnim");
};

// position de départ de la caméra
_camera = "camera" camcreate [508.711,2727.72,0.7];
_camera cameraEffect ["internal", "back"];
_camera camSetTarget teleport_16;
_camera camCommit 0;
true setCamUseTI 0;

sleep 1;

execVM "script\client\end\generic.sqf";
titleCut [" ", "BLACK IN", 1];


sleep 10;

titleCut [" ", "BLACK OUT", 1];
sleep 1;
titleCut [" ", "BLACK IN", 1];

_camera = "camera" camcreate [560.433,2711,3];
_camera cameraEffect ["internal", "back"];
_camera camSetTarget teleport_16;
_camera camCommit 0;

sleep 10;

titleCut [" ", "BLACK OUT", 1];
sleep 1;
titleCut [" ", "BLACK IN", 1];

_camera = "camera" camcreate [553.072,2767.97,10];
_camera cameraEffect ["internal", "back"];
_camera camSetTarget teleport_16;
_camera camCommit 0;

sleep 10;

titleCut [" ", "BLACK OUT", 1];
sleep 1;
titleCut [" ", "BLACK IN", 1];

_camera = "camera" camcreate [532.365,2731.56,75];
_camera cameraEffect ["internal", "back"];
_camera camSetTarget teleport_16;
_camera camCommit 0;

sleep 10;

titleCut [" ", "BLACK OUT", 1];
sleep 1;
titleCut [" ", "BLACK IN", 1];

_camera = "camera" camcreate [594.655,2713.25,100];
_camera cameraEffect ["internal", "back"];
_camera camSetTarget teleport_16;
_camera camCommit 0;

sleep 10;

titleCut [" ", "BLACK OUT", 1];
sleep 1;
titleCut [" ", "BLACK IN", 1];

_camera = "camera" camcreate [410.086,2755.52,200];
_camera cameraEffect ["internal", "back"];
_camera camSetTarget teleport_16;
_camera camCommit 0;

sleep 10;

titleCut [" ", "BLACK OUT", 1];
sleep 1;
titleCut [" ", "BLACK IN", 1];

endMission "end2";