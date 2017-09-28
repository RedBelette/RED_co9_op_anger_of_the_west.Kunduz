// Ce script s'exécute localement quand le joueur rejoins la mission (inclus pour le début de partie)

// Chargement des valeurs par défaut du framework.
#include "..\config\tgvDefaultFrameworkConfig.sqf";

// Changement des valeurs par défaut du framework.
#include "..\..\config\tgvFrameworkReconfig.sqf";

// Initialise les fonctions pour tout les clients.
_handle = execVM "library\function\initClientFunction.sqf";
waitUntil {scriptDone _handle};

// Execute le menu briefing
_handle = execVM "library\script\briefing\admin.sqf";
waitUntil {scriptDone _handle};