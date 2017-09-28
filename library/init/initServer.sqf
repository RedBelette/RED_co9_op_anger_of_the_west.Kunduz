// Ce script est exécuté sur le serveur au démarrage de la mission

// Chargement des valeurs par défaut du framework. Changer les valeurs dans votre initServer.sqf de votre mission pour gérer votre propre configuration.
#include "..\config\tgvDefaultFrameworkConfig.sqf";

// Changement des valeurs par défaut du framework.
#include "..\..\config\tgvFrameworkReconfig.sqf";

// Initialise les fonctions pour tout les clients.
_handle = execVM "library\function\initServerFunction.sqf";
waitUntil {scriptDone _handle};

// Désactive la sauvegarde manuelle et automatique
enableSaving [false, false];
// Désactive les voix digital de toutes les unités
{_x setSpeaker "NoVoice"} forEach playableUnits;

// Permet de s'authentifier entant que zeus si on est un admin sur le serveur ou si on joue en singleplayer
if !(isNil 'tgvcurator') then  { // Vérifie si la variable a été assigné
	tgvcurator addEventHandler ["CuratorPinged", {_this exec "library\event\curatorPinged.sqf"}];
}
