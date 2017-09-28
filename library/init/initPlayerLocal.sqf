// Ce script s'exécute localement quand le joueur rejoins la mission (inclus pour le début de partie)

// Chargement des valeurs par défaut du framework.
#include "..\config\tgvDefaultFrameworkConfig.sqf";

// Changement des valeurs par défaut du framework.
#include "..\..\config\tgvFrameworkReconfig.sqf";

// Initialise les fonctions pour tout les clients.
execVM "library\function\initClientFunction.sqf";

// Execute le menu briefing
execVM "library\script\briefing\admin.sqf";

if (tgvIntroVideo) then {
	// execute la vidéo du logo TGV
 	["library\media\video\tgv.ogv"] spawn BIS_fnc_titlecard; waitUntil {!(isNil "BIS_fnc_titlecard_finished")};
};

if (tgvNotificationAtStartup) then {
	// execute les messages d'acceuil
	[] execVM "library\script\welcome.sqf";
	[] execVM "library\script\popup.sqf";
};

if (tgvAddEarPlugsToUniform) then {
	// ajoute des bouchons d'oreilles à l'inventaire du joueur
	player addItemToUniform "ACE_EarPlugs";
};

if (tgvZoomOnThePlayerInIntro) then {
	// video du haut vers interieur du joueur
	_pos1= player modelToWorld [0,-50, 50];
	_pos2= player modelToWorld [0.3,0.3, 1.6];
	_introcam = "camera" camCreate  _pos1;
	_playercam = "camera" camCreate _pos2;

	///////////cam1/cam2/ cible /dur/foc1/foc2/attach/ x/y/ z /effet   /trans/durtrans
	_prise1 = [_introcam, _playercam, _playercam,5, 1, 1 ,false, 0, 0, 0,"none","blur",4] execVM "library\script\machinery\cam.sqf";
	waitUntil {scriptDone _prise1};

	////======destruction de la camera ne pas editer
	_cam = "camera" camCreate (position player);
	camDestroy _cam;
	player cameraEffect ["terminate","back"];

	camDestroy _introcam;
	camDestroy _playercam;
};