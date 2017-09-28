// Ce script s'exécute localement quand le joueur rejoins la mission (inclus pour le début de partie)

MIS_fnc_remove343 = compile loadFile "function\MIS_fnc_remove343.sqf";

_handle = execVM "script\briefing\usa.sqf";
waitUntil {scriptDone _handle};

_handle = execVM "script\briefing\adminMission.sqf";
waitUntil {scriptDone _handle};

_handle = execVM "script\briefing\note.sqf";
waitUntil {scriptDone _handle};
