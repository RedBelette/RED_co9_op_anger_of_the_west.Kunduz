// Ce fichier s'éxécute quand la mission démarre (avant l'écran de briefing)
if (!hasInterface) exitWith {}; // Init.sqf est lancé également depuis le serveur, cette instruction évite cela.

// MAKE SURE THE PLAYER INITIALIZES PROPERLY
if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// Execute le fichier init du framework
#include "library\init\init.sqf";

// Execute le fichier init de la mission
#include "init\init.sqf";