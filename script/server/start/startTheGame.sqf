"script\client\start\playerStart.sqf" remoteExec ["execVM"];

sleep 20;

vehicleCam1 setDir 45;
vehicleCam2 setDir 45;

vehicleCam1 setPos (getPos teleport_12);

startTheGame = true;
publicVariable "startTheGame";