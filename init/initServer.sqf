
// Ce script est exécuté sur le serveur au démarrage de la mission

startTheGame=false;
reddition =false;

// Avions d'ambience
["[[-25,1466,0],[5422,3599,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 600] call TGV_fnc_repeatedAction;
["[[4275,2299,0], [345,3490,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 900] call TGV_fnc_repeatedAction;
["[[1563,4860,0], [4193,2537,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 1400] call TGV_fnc_repeatedAction;

// Redition
["reddition = [east, 30] call TGV_fnc_redition;", 30] call TGV_fnc_repeatedAction;

["reddition", "publicVariable 'reddition';"] call TGV_fnc_action;

["str(Fichier1) == 'Fichier1'", "fileDownloaded = false; publicVariable 'fileDownloaded';"] call TGV_fnc_action;

["str(Fichier1) != 'Fichier1' and Fichier1 isEqualTo true", "fileDownloaded = true; publicVariable 'fileDownloaded';"] call TGV_fnc_action;

/*#include "..\script\server\task\task1.sqf";
#include "..\script\server\task\task2.sqf";
#include "..\script\server\task\task3.sqf";*/
/*#include "..\script\server\task\task4.sqf";
#include "..\script\server\task\task5.sqf";*/
/*#include "..\script\server\task\task6.sqf";*/

