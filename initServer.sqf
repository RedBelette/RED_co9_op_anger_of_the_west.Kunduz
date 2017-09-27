// Ce script est exécuté sur le serveur au démarrage de la mission

// Execute le fichier initServer du framework
_handle = execVM "library\init\initServer.sqf";
waitUntil {scriptDone _handle};

// Execute le fichier initServer de la mission
execVM "init\initServer.sqf";
