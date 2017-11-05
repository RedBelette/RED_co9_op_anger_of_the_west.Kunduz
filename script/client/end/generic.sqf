_arrayEast = [];
_arrayWest = [];
{
	if (side _x == west) then {
		_arrayWest pushBack _x;
	};
	if (side _x == east) then {
		_arrayEast pushBack _x;
	};
} forEach allUnits;

sleep 4;

_array = [];

_array pushBack "C'était la mission: Colère de l'ouest (Forces Spéciales)";


_array pushBack format ["%1<br/><br/>%2", "Merci au S.O.R.U. pour l'idée original", "Merci à la team TGV pour les nombreux playtests"];

// Remerciements joueurs
_playerUnitsText = "Merci à vous pour votre participation<br/>";
{
	_playerUnitsText = format ["%1<br/>%2", _playerUnitsText, name _x];
} forEach allPlayers;
_array pushBack _playerUnitsText;

//
_array pushBack format ["%1<br/><br/>%2", "Votre équipe passera la nuit au côté de l'ennemi.", "Demain, à l'aurore, le sol tremblera et les balles siffleront à nouveau sur Kunduz."];

// Crédit musiques
_array pushBack format ["%1<br/>%2<br/>%3", "Crédits Musicaux", "Breaking Point ambient music", "ElementD - Fallin' (feat. Micah Martin) [NCS Release]"];

// RedBelette © 2017
_array pushBack "TEAM TGV - RedBelette © 2017";

// Afficher le generic
{
	_text = format ["<t font = 'PuristaMedium'>%1</t>", _x];
	_dynamicText = [_text, -1, -1, 8, -1, -1] spawn BIS_fnc_dynamicText;
	waituntil {scriptdone _dynamicText};
} forEach _array;