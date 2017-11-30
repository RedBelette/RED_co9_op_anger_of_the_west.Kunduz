_arrayWest = [];
{
	if (side _x == west) then {
		_arrayWest pushBack _x;
	};
} forEach playableUnits;

sleep 4;

_array = [];

_array pushBack format ["%1<br/>%2", "C'était la mission: <t color='#FF3F00'>Colère de l'ouest</t>", "(InterTeam)"];

_array pushBack format ["%1<br/><br/>%2", "Merci à <t color='#FF3F00'>Mr.H</t> pour son dévouement et son aide précieuse", "Merci à <t color='#FF3F00'>Anto</t> de nous fournir le serveur malgré le hack"];

_array pushBack format ["%1<br/><br/>%2", "Merci aux <t color='#FF3F00'>S.O.R.U.</t> pour l'idée originale", "Merci aux <t color='#FF3F00'>TGV</t> pour les nombreux playtests"];

_array pushBack format ["%1<br/><br/>%2", "Merci aux autres équipes inscrites", "<t color='#FF3F00'>CPA-10</t> - <t color='#FF3F00'>GSRI</t> - <t color='#FF3F00'>AMFR</t> - <t color='#FF3F00'>126RIM</t>"];

//
_array pushBack format ["%1<br/><br/>%2", "QUE VIVE LA COMMUNAUTE ARMA <t color='#0000FF'>FRAN</t><t color='#FFFFFF'>CO</t><t color='#FF0000'>PHONE</t>"];

// Remerciements joueurs
_maxPage = ceil (count _arrayWest / 10);
_page = 0;
_allUnitsTextPage= "";

while {_page < _maxPage} do
{
	_allUnitsTextPage = format ["Merci <t color='#FF3F00'>à chacun</t> pour votre participation (%1/%2)<br/><br/>", _page + 1, _maxPage];
	_i = 0;
	while {_i < 10} do
	{
		_iPaginatedArray = _i + (_page * 10);
		if (_iPaginatedArray < count _arrayWest) then {
			_allUnitsTextName = name (_arrayWest select _i + (_page * 10));
			_allUnitsTextPage = format ["%1<br/>%2", _allUnitsTextPage, _allUnitsTextName];
		};
		_i = _i + 1;
	};

	_array pushBack _allUnitsTextPage;
	_allUnitsTextPage = "";
	_page = _page + 1;
};

// Bilan
_mission1 = "";
if (reddition) then {
	_mission1 = "[<t color='#00FF00'>REUSSI</t>] Les talibans sont en reddition";
} else {
	_mission1 = "[<t color='#FF0000'>ECHEC</t>] Les talibans ont résisté";
};
_mission2 = "";
if (fileDownloaded) then {
	_mission2 = "[<t color='#00FF00'>REUSSI</t>] Les données du journaliste ont été retrouvées";
} else {
	_mission2 = "[<t color='#FF0000'>ECHEC</t>] Les données du journaliste n'ont pas été retrouvées";
};
_array pushBack format ["<t color='#FF3F00'>%1</t><br/>%2<br/>%3", "Bilan", _mission1, _mission2];


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