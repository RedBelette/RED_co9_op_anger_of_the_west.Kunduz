// Ce script est exécuté sur le serveur au démarrage de la mission

// Execute le fichier initServer du framework
execVM "library\init\initServer.sqf";

// Execute le fichier initServer de la mission
execVM "init\initServer.sqf";

MIS_fnc_spawnAndAttack = compile loadFile "function\MIS_fnc_spawnAndAttack.sqf";
MIS_fnc_spawnAndAttackEachTime = compile loadFile "function\MIS_fnc_spawnAndAttackEachTime.sqf";