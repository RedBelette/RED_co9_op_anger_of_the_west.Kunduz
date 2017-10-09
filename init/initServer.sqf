// Chargement des fonctions créées pour la mission
MIS_fnc_spawnAndAttack = compile loadFile "function\MIS_fnc_spawnAndAttack.sqf";
MIS_fnc_spawnAndAttackEachTime = compile loadFile "function\MIS_fnc_spawnAndAttackEachTime.sqf";
MIS_fnc_cronjob = compile loadFile "function\MIS_fnc_cronjob.sqf";
MIS_fnc_scenarioTitle = compile loadFile "function\MIS_fnc_scenarioTitle.sqf";
MIS_fnc_trigger = compile loadFile "function\MIS_fnc_trigger.sqf";
MIS_fnc_defendArea = compile loadFile "function\MIS_fnc_defendArea.sqf";

// Ce script est exécuté sur le serveur au démarrage de la mission
southSpawn=false;
westSpawn=false;
aerialSpawn=false;
tankSpawn=false;
loadEnemies=false;
startTheGame=false;
redition=false;


// Cron jobs
// Efface les cadavres
/*["execVM 'script\cronjob\removeDeadInfantry.sqf';", 20] call MIS_fnc_cronjob;*/
// Prépare la rédition et la fin de partie
["[20] execVM 'script\cronjob\prepareRedition.sqf';", 25] call MIS_fnc_cronjob;
// Les ennemis vont défendre la zone de kar shek dès qu'il restera moins de x unités encore en vie
["loadEnemies and (east countSide allUnits) < 60","[east, getPos karShekArea, 180] call MIS_fnc_defendArea;"] call MIS_fnc_trigger;


// Avions d'ambience
/*["[[-25,1466,0],[5422,3599,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 600] call MIS_fnc_cronjob;
["[[4275,2299,0], [345,3490,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 900] call MIS_fnc_cronjob;
["[[1563,4860,0], [4193,2537,0]] execVM 'script\cronjob\ambientFlyBy.sqf';", 1400] call MIS_fnc_cronjob;*/


// Contient onEachFrame
/*[2115,2907,400] execVM "script\material\satelitte.sqf";*/