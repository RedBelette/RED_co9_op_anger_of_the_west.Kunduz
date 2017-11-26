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

_array pushBack format ["%1<br/>%2", "C'était la mission: <t color='#FF3F00'>Colère de l'ouest</t>", "(InterTeam)"];

_array pushBack format ["%1<br/><br/>%2", "Merci aux <t color='#FF3F00'>S.O.R.U.</t> pour l'idée originale", "Merci aux <t color='#FF3F00'>TGV</t> pour les nombreux playtests"];

// Remerciements joueurs
_playerUnitsText = "Merci <t color='#FF3F00'>à vous</t> pour votre participation<br/>";
{
	_playerUnitsText = format ["%1<br/>%2", _playerUnitsText, name _x];
} forEach allPlayers;
_array pushBack _playerUnitsText;

//
_array pushBack format ["%1<br/><br/>%2", "ET VIVE LA COMMUNAUTE ARMA <t color='#0000FF'>FRAN</t><t color='#FFFFFF'>CO</t><t color='#FF0000'>PHONE</t>"];

// Crédit musiques
_array pushBack format ["<t color='#FF3F00'>%1</t><br/><br/>Intro : %2<br/><br/>Outro : %3", "Crédits Musicaux", "Prince of Persia - Warrior Within", "ElementD - Fallin"];

// RedBelette © 2017
_array pushBack "<t color='#FF3F00'>TEAM TGV</t> - RedBelette © 2017";

// Afficher le generic
{
	_text = format ["<t font = 'PuristaMedium'>%1</t>", _x];
	_dynamicText = [_text, -1, -1, 8, -1, -1] spawn BIS_fnc_dynamicText;
	waituntil {scriptdone _dynamicText};
} forEach _array;