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

_array pushBack "C'était la mission: Colère de l'ouest (SpecOps)";

// _playerUnitsText
_playerUnitsText = "Merci pour votre participation<br/>";
{
	_playerUnitsText = format ["%1<br/>%2", _playerUnitsText, name _x];
} forEach allPlayers;
_array pushBack _playerUnitsText;

// Crédit musiques
_array pushBack format ["%1<br/>%2", "Musique d'intro", "Truc truc"];
_array pushBack format ["%1<br/>%2", "Musique d'outro", "Truc truc"];

// RedBelette © 2017
_array pushBack "TEAM TGV - RedBelette © 2017";

// Afficher le generic
{
	_text = format ["<t font = 'PuristaMedium'>%1</t>", _x];
	_dynamicText = [_text, -1, -1, 8, -1, -1] spawn BIS_fnc_dynamicText;
	waituntil {scriptdone _dynamicText};
} forEach _array;