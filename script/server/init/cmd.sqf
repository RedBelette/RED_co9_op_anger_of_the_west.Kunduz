_targetAction = _this select 0;
helicoGroup = _this select 1;
attackPos = _this select 2;
radius = _this select 3;
returnPos = _this select 4;

diag_log ["cmd.sqf", _targetAction, helicoGroup, attackPos, radius, returnPos];

_action = ["heligo",
			"Envoyer les apaches",
 			"media\image\heligo.paa",
 			{helicoGo = true; publicVariable 'helicoGo';},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["heliback",
			"Retour des hélicots",
 			"media\image\heligo.paa",
 			{helicoBack = true; publicVariable 'helicoBack';},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

MIS_fnc_action = compile loadFile "function\MIS_fnc_action.sqf";

// Helico
["helicoGo", "[helicoGroup, attackPos, radius] execVM 'script\server\action\helico.sqf';"] call MIS_fnc_action;
["helicoBack", "[helicoGroup, returnPos] execVM 'script\server\action\helicoback.sqf';"] call MIS_fnc_action;

