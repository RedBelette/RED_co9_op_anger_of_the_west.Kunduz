// Ce script s'exécute sur le serveur quand un joueur rejoint la mission (inclus pour le début de partie)

// Execute le fichier initPlayerServer du framework
_handle = execVM "library\init\initPlayerServer.sqf";
waitUntil {scriptDone _handle};

// Execute le fichier initPlayerServer de la mission
_handle = execVM "init\initPlayerServer.sqf";
waitUntil {scriptDone _handle};
