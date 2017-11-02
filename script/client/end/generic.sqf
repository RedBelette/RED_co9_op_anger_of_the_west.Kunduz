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

// WEST
_maxPage = ceil (count _arrayWest / 10);
_page = 0;
_allUnitsTextPage= "";

while {_page < _maxPage} do
{
	_allUnitsTextPage = format ["Le camp des gentils (USA) (%1/%2)<br/>", _page + 1, _maxPage];
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

// EAST
_maxPage = ceil (count _arrayEast / 10);
_page = 0;
_allUnitsTextPage= "";

while {_page < _maxPage} do
{
	_allUnitsTextPage = format ["Le camp des méchants (Talibans) (%1/%2)<br/>", _page + 1, _maxPage];
	_i = 0;
	while {_i < 10} do
	{
		_iPaginatedArray = _i + (_page * 10);
		if (_iPaginatedArray < count _arrayEast) then {
			_allUnitsTextName = name (_arrayEast select _i + (_page * 10));
			_allUnitsTextPage = format ["%1<br/>%2", _allUnitsTextPage, _allUnitsTextName];
		};
		_i = _i + 1;
	};

	_array pushBack _allUnitsTextPage;
	_allUnitsTextPage = "";
	_page = _page + 1;
};

// RedBelette © 2017
_array pushBack "TEAM TGV - RedBelette © 2017";

// Afficher le generic
{
	_text = format ["<t font = 'PuristaMedium'>%1</t>", _x];
	_dynamicText = [_text, -1, -1, 8, -1, -1] spawn BIS_fnc_dynamicText;
	waituntil {scriptdone _dynamicText};
} forEach _array;