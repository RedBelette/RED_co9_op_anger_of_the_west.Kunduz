// Ce script s'exécute localement quand le joueur rejoins la mission (inclus pour le début de partie)
_handle = execVM "script\briefing\usa.sqf";
waitUntil {scriptDone _handle};

_handle = execVM "script\briefing\adminMission.sqf";
waitUntil {scriptDone _handle};

_handle = execVM "script\briefing\note.sqf";
waitUntil {scriptDone _handle};
