// Ce script s'exécute sur le serveur quand un joueur rejoint la mission (inclus pour le début de partie)

// Execute le fichier initPlayerServer du framework
execVM "library\init\initPlayerServer.sqf";

// Execute le fichier initPlayerServer de la mission
execVM "init\initPlayerServer.sqf";