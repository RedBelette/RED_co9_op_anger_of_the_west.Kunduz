/*_defaultViewDistance = viewDistance;*/
showCinemaBorder false;

titleCut [" ", "BLACK OUT", 1];
sleep 1;
titleCut [" ", "BLACK IN", 1];


0 = ["ColorCorrections", 1500, [1, 0.4, 0, [1, 0, 0, 0], [1, 0.1, 0.1, 0], [1, 1, 1, 0]]] spawn
{
	params ["_name", "_priority", "_effect", "_handle"];
	while {
		_handle = ppEffectCreate [_name, _priority];
		_handle < 0
	} do {
		_priority = _priority + 1;
	};
	_handle ppEffectEnable true;
	_handle ppEffectAdjust _effect;
	_handle ppEffectCommit 10;
	waitUntil {ppEffectCommitted _handle};
	uiSleep 3;
	comment "admire effect for a sec";
	_handle ppEffectEnable false;
	ppEffectDestroy _handle;
};

// Zoom out
_camera = "camera" camcreate getPos cut1;
_camera cameraEffect ["internal", "back"];
_camera attachTo [cut1, [-0.8,-2,1.5]];

_camera camCommit 10;
waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 1];
sleep 1;
titleCut [" ", "BLACK IN", 1];

0 = ["ColorCorrections", 1500, [1, 0.4, 0, [1, 0, 0, 0], [1, 0.1, 0.1, 0], [1, 1, 1, 0]]] spawn
{
	params ["_name", "_priority", "_effect", "_handle"];
	while {
		_handle = ppEffectCreate [_name, _priority];
		_handle < 0
	} do {
		_priority = _priority + 1;
	};
	_handle ppEffectEnable true;
	_handle ppEffectAdjust _effect;
	_handle ppEffectCommit 10;
	waitUntil {ppEffectCommitted _handle};
	uiSleep 3;
	comment "admire effect for a sec";
	_handle ppEffectEnable false;
	ppEffectDestroy _handle;
};

_camera = "camera" camcreate getPos cut2;
_camera cameraEffect ["internal", "back"];
_camera attachTo [cut2, [-0.8,-2,1.5]];

_camera camCommit 10;
waitUntil {camCommitted _camera};



/*// Last fade
titleCut [" ", "BLACK OUT", 3];
sleep 3;
setViewDistance 12000;
sleep 1;
titleCut [" ", "BLACK IN", 3];*/

player cameraEffect ["terminate","back"];
camDestroy _camera;

/*sleep 10;

[parseText format [ "<t align='right' size='1.2'><t font='PuristaBold' size='1.6'>""%1""</t><t>%2</t>", toUpper "Colère de l'ouest (InterTeam)", "par RedBelette"], true, nil, 7, 0.7, 0] call BIS_fnc_textTiles;*/