/*_defaultViewDistance = viewDistance;*/
showCinemaBorder true;

titleCut [" ", "BLACK OUT", 1];
sleep 1;

playMusic "IntroMusic2";

_posPlayerHeight = [0, 0, 500];
_camera = "camera" camcreate _posPlayerHeight;
_camera cameraEffect ["internal", "back"];
_camera camCommit 0;
true setCamUseTI 0;
waitUntil {camCommitted _camera};

sleep 2;

titleText ["<t color='#ffffff' size='6'>La team <t color='#FF3F00'>TGV</t> présente</t><br/>", "PLAIN", -1, true, true];

sleep 5;

titleText ["", "PLAIN", -1, true, true];

sleep 2;

titleText ["<t color='#ffffff' size='2'>Une mission réalisée pour l'interteam du 03/12/2017.</t><br/><br/><t color='#ffffff' size='2'><t color='#FF3F00'>Powered by</t> TGV Framework © <t color='#FF3F00'>RedBelette</t> 2017.</t>", "PLAIN", -1, true, true];

sleep 5;

titleText ["", "PLAIN", -1, true, true];

sleep 2;

titleText ["<t color='#ffffff' size='2'>Merci à la team <t color='#FF3F00'>S.O.R.U.</t> pour leur implication.</t><br/>", "PLAIN", -1, true, true];

sleep 5;

titleText ["", "PLAIN", -1, true, true];

sleep 2;
titleCut [" ", "BLACK IN", 2];

// generic 1
[] spawn {
	sleep 2;

	_array = [];
	// Crédit musiques
	_array pushBack format ["<t color='#FF3F00'>%1</t><br/><br/>%2<br/>%3<br/>%4<br/>%5", "Rapport reconnaissance SORU", "Plus de 200 combattants", "6 T72B - 2 Land rover (M2) - 1 9k38 (DJIGIT)", "2 KORD - 1 NSV - 1 MK19", "2 SZU-23-2 - 1SPG-9 - 2 M2"];

	// Afficher le generic
	{
		_text = format ["<t font = 'PuristaMedium'>%1</t>", _x];
		_dynamicText = [_text, -0.6, 0.1, 4, 2, 0] spawn BIS_fnc_dynamicText;
		waituntil {scriptdone _dynamicText};
	} forEach _array;

};

// Caméra épaule 1
_camera = "camera" camcreate getPos cut1;
_camera cameraEffect ["internal", "back"];
_camera attachTo [cut1, [-0.8,-2,1.5]];
_camera camCommit 10;
waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 1];
sleep 1;
titleCut [" ", "BLACK IN", 1];

[] spawn {
	sleep 2;

	_array = [];
	// Crédit musiques
	_array pushBack format ["<t color='#FF3F00'>%1</t><br/><br/>%2<br/>%3<br/>%4<br/>%5", "Mods", "CBA_A3 - ACE - ACE Compat RHS", "RHSUSAF - RHSAFRF - Project Opfor", "Task Force Radio - TGVextraMods - retextureRHS_SORU", "Kunduz Afghanistan Fixed doors"];

	// Afficher le generic
	{
		_text = format ["<t font = 'PuristaMedium'>%1</t>", _x];
		_dynamicText = [_text, 0.5, 0, 4, 2, 0] spawn BIS_fnc_dynamicText;
		waituntil {scriptdone _dynamicText};
	} forEach _array;

};
// Caméra épaule 2
_camera = "camera" camcreate getPos cut2;
_camera cameraEffect ["internal", "back"];
_camera attachTo [cut2, [0.8,-2,1.5]];
_camera camCommit 10;
waitUntil {camCommitted _camera};

titleCut [" ", "BLACK OUT", 1];
sleep 1;
false setCamUseTI 0;
titleCut [" ", "BLACK IN", 1];

// Landscape and title
_riverPos = [2633.51,1665.08,20];
_riverDirPos2 = [2615.91,2067.76,0];
_camera = "camera" camcreate _riverPos;
_camera cameraEffect ["internal", "back"];
_camera camSetDir (_riverPos vectorFromTo _riverDirPos2);
_camera camCommit 0;
waitUntil {camCommitted _camera};

titleCut [" ", "BLACK IN", 2];

sleep 3;

["media\image\title.paa", 9] call MIS_fnc_imageFullScreen;

sleep 11;

titleCut [" ", "BLACK OUT", 2];
sleep 2;

player cameraEffect ["terminate","back"];
camDestroy _camera;

titleCut [" ", "BLACK IN", 1];

sleep 3;

[parseText format [ "<t align='right' size='1.2'><t font='PuristaBold' size='1.6'>""%1""</t><t>%2</t>", toUpper "Colère de l'ouest (Interteam)", "par RedBelette"], true, nil, 7, 0.7, 0] call BIS_fnc_textTiles;