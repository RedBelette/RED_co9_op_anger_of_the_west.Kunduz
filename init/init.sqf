// Ce fichier s'éxécute quand la mission démarre (avant l'écran de briefing)

// Initialise les fonctions pour tout les clients.
_handle = execVM "library\function\initClientFunction.sqf";
waitUntil {scriptDone _handle};

call compilefinal preprocessFileLineNumbers  "script\briefing\adminMission.sqf";
call compilefinal preprocessFileLineNumbers  "script\briefing\note.sqf";
call compilefinal preprocessFileLineNumbers  "script\briefing\usa.sqf";