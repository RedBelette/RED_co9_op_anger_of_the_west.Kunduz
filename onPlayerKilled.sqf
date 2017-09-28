// Ce fichier est exécuté lorsqu'un joueur est tué

// Execute le fichier onPlayerKilled du framework
_handle = execVM "library\event\onPlayerKilled.sqf";
waitUntil {scriptDone _handle};

// Execute le fichier onPlayerKilled de la mission
_handle = execVM "event\onPlayerKilled.sqf";
waitUntil {scriptDone _handle};
