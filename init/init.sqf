// Ce fichier s'éxécute quand la mission démarre (avant l'écran de briefing)

// Initialise les fonctions pour tout les clients.

reddition =false;

MIS_fnc_imageFullScreen = compile loadFile "function\MIS_fnc_imageFullScreen.sqf";

_handle = execVM "library\function\initClientFunction.sqf";
waitUntil {scriptDone _handle};

call compilefinal preprocessFileLineNumbers  "script\briefing\adminMission.sqf";
call compilefinal preprocessFileLineNumbers  "script\briefing\usa.sqf";