_targetAction = _this select 0;

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