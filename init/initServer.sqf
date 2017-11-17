
// Ce script est exécuté sur le serveur au démarrage de la mission

startTheGame=false;

// Avions d'ambience
["[[-25,1466,0],[5422,3599,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 600] call TGV_fnc_repeatedAction;
["[[4275,2299,0], [345,3490,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 900] call TGV_fnc_repeatedAction;
["[[1563,4860,0], [4193,2537,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 1400] call TGV_fnc_repeatedAction;

// Redition
["[east, 30] call TGV_fnc_redition;", 30] call TGV_fnc_repeatedAction;

// Contient onEachFrame
/*[2115,2907,400] execVM "script\material\satelitte.sqf";*/


// Configure monitors

/*[vehicleCam1, monitor1, "monicam1", [0.5,1.6,1.45]] execVM "script\server\monitor\setupVehicleCamera.sqf";
[vehicleCam2, monitor2, "monicam2", [0.5,1.6,1.45]] execVM "script\server\monitor\setupVehicleCamera.sqf";

[monitor1, "monicam1"] execVM "script\server\monitor\power.sqf";
[monitor2, "monicam2"] execVM "script\server\monitor\power.sqf";*/

/*[vehicleCam3, monitor3, "monicam3", [0.5,1.6,1.45]] execVM "script\server\monitor\setupVehicleCamera.sqf";
[vehicleCam4, monitor4, "monicam4", [0.5,1.6,1.45]] execVM "script\server\monitor\setupVehicleCamera.sqf";

[vehicleCam5, monitor5, "monicam5", [0.5,1.6,5]] execVM "script\server\monitor\setupVehicleCamera.sqf";
[vehicleCam6, monitor6, "monicam6", [0.5,1.6,5]] execVM "script\server\monitor\setupVehicleCamera.sqf";
[vehicleCam7, monitor7, "monicam7", [0.5,1.6,5]] execVM "script\server\monitor\setupVehicleCamera.sqf";
[vehicleCam8, monitor8, "monicam8", [0.5,1.6,5]] execVM "script\server\monitor\setupVehicleCamera.sqf";*/

/*[helicam1, "monicam1", [0,1,-2]] execVM "script\server\monitor\setupVehicleCamera.sqf";
[helicam2, "monicam2", [0,1,-2]] execVM "script\server\monitor\setupVehicleCamera.sqf";
[helicam3, monitor11, "monicam11", [0.5,1.6,5]] execVM "script\server\monitor\setupVehicleCamera.sqf";
[helicam4, monitor12, "monicam12", [0.5,1.6,5]] execVM "script\server\monitor\setupVehicleCamera.sqf";*/


/*#include "..\script\server\task\task1.sqf";
#include "..\script\server\task\task2.sqf";
#include "..\script\server\task\task3.sqf";*/
/*#include "..\script\server\task\task4.sqf";
#include "..\script\server\task\task5.sqf";*/
/*#include "..\script\server\task\task6.sqf";*/

