
/*_vehicule = vehiculeCam1;
_name = "monicam1";
_relativePos = [0.5,1.6,1.45];*/


diag_log["Cam setup", _this select 0, _this select 1, _this select 2];

_vehicule = _this select 0;
_name = _this select 1;
_relativePos = _this select 2;

_camera = "camera" camCreate (position _vehicule);
_camera attachto [(vehicle _vehicule),_relativePos, "neck"];
_camera camCommit 1;
_camera cameraEffect ["INTERNAL", "BACK",_name];
_name setPiPEffect [0];