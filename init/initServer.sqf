
// Ce script est exécuté sur le serveur au démarrage de la mission
/*southSpawn=false;
westSpawn=false;
aerialSpawn=false;
tankSpawn=false;
loadEnemies=false;*/
startTheGame=false;
/*redition=false;*/

// Scénario
/*["startTheGame","execVM 'script\admin\startTheGame.sqf';southSpawn=true;westSpawn=true;"] call TGV_fnc_action;
["startTheGame","aerialSpawn=true;", 2700] call TGV_fnc_timedAction; // 45 min
["startTheGame","tankSpawn=true;", 1800] call TGV_fnc_timedAction; // 30 min
["redition","endMission 'end2'", 30] call TGV_fnc_timedAction;*/


// Prépare la rédition et la fin de partie
/*["[20] execVM 'script\cronjob\prepareRedition.sqf';", 25] call TGV_fnc_repeatedAction;*/
// Les ennemis vont défendre la zone de kar shek dès qu'il restera moins de x unités encore en vie
/*["loadEnemies and (east countSide allUnits) < 60","[east, getPos karShekArea, 180] call TGV_fnc_defendArea;"] call TGV_fnc_action;
["loadEnemies and (east countSide allUnits) < 40","[getPos talKarArea, getPos karShekArea, 5, 20] execVM 'script\spawnEnemies.sqf';"] call TGV_fnc_action;*/

// Avions d'ambience
["[[-25,1466,0],[5422,3599,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 600] call TGV_fnc_repeatedAction;
["[[4275,2299,0], [345,3490,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 900] call TGV_fnc_repeatedAction;
["[[1563,4860,0], [4193,2537,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 1400] call TGV_fnc_repeatedAction;


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


// Ce script équipe les ennemis de lampe torche sur leur arme principal
{
	if (side _x == east) then {
		_x addPrimaryWeaponItem "rhs_acc_2dpZenit";
		_x unassignItem "NVGoggles";
		_x removeItem "NVGoggles";
		_x enablegunlights "forceOn"
	};
} forEach allUnits;

"caisse_1" setMarkerAlpha 0;
"caisse_2" setMarkerAlpha 0;
"caisse_3" setMarkerAlpha 0;
"caisse_4" setMarkerAlpha 0;
"caisse_5" setMarkerAlpha 0;
"marker_task_5" setMarkerAlpha 0;

#include "..\script\server\task\task1.sqf";
#include "..\script\server\task\task2.sqf";
#include "..\script\server\task\task3.sqf";
/*#include "..\script\server\task\task4.sqf";
#include "..\script\server\task\task5.sqf";*/
#include "..\script\server\task\task6.sqf";


/**/
["vehicleCam1 distance (getMarkerPos 'marker_task_1') < 75","['car', 'SUCCEEDED'] spawn BIS_fnc_taskSetState;"] call TGV_fnc_action;
["!alive caisse1 and !alive caisse2 and !alive caisse3 and !alive caisse4 and !alive caisse5","['caches', 'SUCCEEDED'] spawn BIS_fnc_taskSetState;"] call TGV_fnc_action;
["journalist distance (getMarkerPos 'marker_task_6') < 75","['exfiltrez', 'SUCCEEDED'] spawn BIS_fnc_taskSetState;"] call TGV_fnc_action;


["script\client\action\contactAddAction.sqf", true] call TGV_fnc_execScriptOnClients;
["script\client\action\bivouacAddAction.sqf", true] call TGV_fnc_execScriptOnClients;
