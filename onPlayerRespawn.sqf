// Ce fichier est exécuté lorsqu'un joueur respawn

// Execute le fichier onPlayerRespawn du framework
_handle = execVM "library\event\onPlayerRespawn.sqf";
waitUntil {scriptDone _handle};

// Execute le fichier onPlayerRespawn de la mission
_handle = execVM "event\onPlayerRespawn.sqf";
waitUntil {scriptDone _handle};
