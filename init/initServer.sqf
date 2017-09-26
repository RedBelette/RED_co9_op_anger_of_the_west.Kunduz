// Chargement des fonctions créées pour la mission
MIS_fnc_spawnAndAttack = compile loadFile "function\MIS_fnc_spawnAndAttack.sqf";
MIS_fnc_spawnAndAttackEachTime = compile loadFile "function\MIS_fnc_spawnAndAttackEachTime.sqf";

// Ce script est exécuté sur le serveur au démarrage de la mission
southSpawn=false;
westSpawn=false;
aerialSpawn=false;
tankSpawn=false;
loadEnemies=false;
startTheGame=false;
redition=false;

cronJobActivated=true;
[60] execVM "script\cronjob\removeDeadInfantry.sqf";
[20, 50] execVM "script\cronjob\prepareRedition.sqf";
[2115,2907,500] execVM "script\material\satelitte.sqf";

ambientFlyBy=true;
execVM "script\cronjob\ambientFlyBy.sqf";
