['contact', 'SUCCEEDED'] spawn BIS_fnc_taskSetState;

"caisse_1" setMarkerAlpha 1.0;
"caisse_2" setMarkerAlpha 1.0;
"caisse_3" setMarkerAlpha 1.0;
"caisse_4" setMarkerAlpha 1.0;
"caisse_5" setMarkerAlpha 1.0;
"marker_task_5" setMarkerAlpha 1.0;

execVM "script\server\task\task4.sqf";
execVM "script\server\task\task5.sqf";