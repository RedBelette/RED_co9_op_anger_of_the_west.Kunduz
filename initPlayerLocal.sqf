// Ce script s'exécute localement quand le joueur rejoins la mission (inclus pour le début de partie)

// Execute le fichier initPlayerLocal du framework
_handle = execVM "library\init\initPlayerLocal.sqf";
waitUntil {scriptDone _handle};

// Execute le fichier initPlayerLocal de la mission
_handle = execVM "init\initPlayerLocal.sqf";
waitUntil {scriptDone _handle};
