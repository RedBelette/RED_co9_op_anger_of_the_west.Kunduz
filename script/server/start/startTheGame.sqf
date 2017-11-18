/*if (!isNil "startTheGame" and startTheGame) exitWith {};
*/
"script\client\start\playerStart.sqf" remoteExec ["execVM"];

sleep 20;

startTheGame = true;
publicVariable "startTheGame";