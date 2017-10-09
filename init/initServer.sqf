
// Ce script est exécuté sur le serveur au démarrage de la mission
southSpawn=false;
westSpawn=false;
aerialSpawn=false;
tankSpawn=false;
loadEnemies=false;
startTheGame=false;
redition=false;

// Scénario
["startTheGame","execVM 'script\admin\startTheGame.sqf';southSpawn=true;westSpawn=true;"] call TGV_fnc_action;
["startTheGame","aerialSpawn=true;", 2700] call TGV_fnc_timedAction; // 45 min
["startTheGame","tankSpawn=true;", 1800] call TGV_fnc_timedAction; // 30 min
["redition","endMission 'end2'", 30] call TGV_fnc_timedAction;


// Prépare la rédition et la fin de partie
["[20] execVM 'script\cronjob\prepareRedition.sqf';", 25] call TGV_fnc_repeatedAction;
// Les ennemis vont défendre la zone de kar shek dès qu'il restera moins de x unités encore en vie
["loadEnemies and (east countSide allUnits) < 60","[east, getPos karShekArea, 180] call TGV_fnc_defendArea;"] call TGV_fnc_action;


// Avions d'ambience
["[[-25,1466,0],[5422,3599,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 600] call TGV_fnc_repeatedAction;
["[[4275,2299,0], [345,3490,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 900] call TGV_fnc_repeatedAction;
["[[1563,4860,0], [4193,2537,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 1400] call TGV_fnc_repeatedAction;


// Contient onEachFrame
[2115,2907,400] execVM "script\material\satelitte.sqf";

// Charge le briefing chez les clients + JIP
["script\briefing\usa.sqf", true] call TGV_fnc_execScriptOnClients;
["script\briefing\adminMission.sqf", true] call TGV_fnc_execScriptOnClients;
["script\briefing\note.sqf", true] call TGV_fnc_execScriptOnClients;