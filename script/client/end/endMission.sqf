//193
titleCut [" ", "BLACK OUT", 1];
sleep 3;
setViewDistance 12000;
sleep 3;

execVM "script\client\end\generic.sqf";

playMusic "Tatu";
sleep 1;
titleCut [" ", "BLACK IN", 1];

_posPlayer = getPos player;

// 1
_posStart = [_posPlayer select 0, _posPlayer select 1, 3];
_posEnd = [_posPlayer select 0, (_posPlayer select 1)-80, 200];

_camera = "camera" camcreate _posStart;
_camera cameraEffect ["internal", "back"];
_camera camSetPos _posEnd;
_camera camSetTarget player;
_camera camCommit 27.6;

waitUntil {camCommitted _camera};


// 2
_posStart = _posEnd;
_posEnd = [_posStart select 0, (_posStart select 1) - 193, 200];

_camera = "camera" camcreate _posStart;
_camera cameraEffect ["internal", "back"];
_camera camSetPos _posEnd;
_camera camSetTarget player;
_camera camCommit 27.6;

waitUntil {camCommitted _camera};

// 3
_posStart = _posEnd;
_posEnd = [_posStart select 0, (_posStart select 1) - 193, 180];

_camera = "camera" camcreate _posStart;
_camera cameraEffect ["internal", "back"];
_camera camSetPos _posEnd;
_camera camSetTarget player;
_camera camCommit 27.6;

waitUntil {camCommitted _camera};

// 4
_posStart = _posEnd;
_posEnd = [_posStart select 0, (_posStart select 1) - 193, 160];

_camera = "camera" camcreate _posStart;
_camera cameraEffect ["internal", "back"];
_camera camSetPos _posEnd;
_camera camSetTarget player;
_camera camCommit 27.6;

waitUntil {camCommitted _camera};

// 5
_posStart = _posEnd;
_posEnd = [_posStart select 0, (_posStart select 1) - 193, 140];

_camera = "camera" camcreate _posStart;
_camera cameraEffect ["internal", "back"];
_camera camSetPos _posEnd;
_camera camSetTarget player;
_camera camCommit 27.6;

waitUntil {camCommitted _camera};

// 6
_posStart = _posEnd;
_posEnd = [_posStart select 0, (_posStart select 1) - 193, 120];

_camera = "camera" camcreate _posStart;
_camera cameraEffect ["internal", "back"];
_camera camSetPos _posEnd;
_camera camSetTarget player;
_camera camCommit 27.6;

waitUntil {camCommitted _camera};

// 7
_posStart = _posEnd;
_posEnd = [_posStart select 0, (_posStart select 1) - 193, 100];

_camera = "camera" camcreate _posStart;
_camera cameraEffect ["internal", "back"];
_camera camSetPos _posEnd;
_camera camSetTarget player;
_camera camCommit 27.6;

waitUntil {camCommitted _camera};

endMission "end2";