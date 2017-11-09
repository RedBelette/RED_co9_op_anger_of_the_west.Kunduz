/*_defaultViewDistance = viewDistance;*/
showCinemaBorder false;

playMusic "IntroMusic";

titleCut [" ", "BLACK OUT", 1];
sleep 1;
/*setViewDistance 8000;*/
sleep 2;
titleCut [" ", "BLACK IN", 1];

// Zoom out
_posPlayer = getPos player;
_posStart = [_posPlayer select 0, _posPlayer select 1, 3];
_posEnd = [_posPlayer select 0, (_posPlayer select 1)-80, 200];
_camera = "camera" camcreate _posStart;
_camera cameraEffect ["internal", "back"];
_camera camSetPos _posEnd;
_camera camSetTarget player;
_camera camCommit 10;
waitUntil {camCommitted _camera};

// Fade and teleport
titleCut [" ", "BLACK OUT", 0];
sleep 1;
execVM "script\client\teleport\playerTeleport.sqf";
sleep 2;
titleCut [" ", "BLACK IN", 3];


// Travelling to the river
_travellingFrom = [4803.95,150.138,80];
_travellingTo = [3486.03,777.386,20];
_camera = "camera" camcreate _travellingFrom;
_camera cameraEffect ["internal", "back"];
_camera camSetDir (_travellingFrom vectorFromTo _travellingTo);
_camera camCommit 0; // Fix direction
_camera camSetPos _travellingTo;
_camera camCommit 10;
sleep 7;


// Fade
titleCut [" ", "BLACK OUT", 3];
sleep 3;
titleCut [" ", "BLACK IN", 3];


// Landscape and title
_riverPos = [2633.51,1665.08,20];
_riverDirPos2 = [2615.91,2067.76,0];
_camera = "camera" camcreate _riverPos;
_camera cameraEffect ["internal", "back"];
_camera camSetDir (_riverPos vectorFromTo _riverDirPos2);
_camera camCommit 0;
waitUntil {camCommitted _camera};

sleep 4;
["media\image\title.paa", 9] call MIS_fnc_imageFullScreen;
sleep 11;

// Fade
titleCut [" ", "BLACK OUT", 3];
sleep 1;
titleCut [" ", "BLACK IN", 3];

// Travelling sand
_travellingFrom = [3276.8,856.414,20];
_travellingTo = [415.348,1439.26,20];
_camera = "camera" camcreate _travellingFrom;
_camera cameraEffect ["internal", "back"];
_camera camSetDir (_travellingFrom vectorFromTo _travellingTo);
_camera camCommit 0; // Fix direction
_camera camSetPos _travellingTo;
_camera camCommit 15;
sleep 12;

// Fade
titleCut [" ", "BLACK OUT", 3];
sleep 1;
titleCut [" ", "BLACK IN", 3];


// Zoom in
_posPlayer = getPos player;
_posStart = [_posPlayer select 0, (_posPlayer select 1)-80, 20];
_posEnd = [(_posPlayer select 0) - 1.5, _posPlayer select 1, 1.5];
_camera = "camera" camcreate _posStart;
_camera cameraEffect ["internal", "back"];
_camera camSetTarget player;
_camera camCommit 0; // Fix direction
_camera camSetPos _posEnd;
_camera camCommit 3;
waitUntil {camCommitted _camera};

// Last fade
titleCut [" ", "BLACK OUT", 3];
sleep 3;
/*setViewDistance 12000;*/
sleep 1;
titleCut [" ", "BLACK IN", 3];

player cameraEffect ["terminate","back"];
camDestroy _camera;

sleep 10;

[parseText format [ "<t align='right' size='1.2'><t font='PuristaBold' size='1.6'>""%1""</t><t>%2</t>", toUpper "Colère de l'ouest (SpecOps)", "par RedBelette"], true, nil, 7, 0.7, 0] call BIS_fnc_textTiles;