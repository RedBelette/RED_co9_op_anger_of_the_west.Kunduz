params ["_title", "_author"];

[[parseText format [ "<t align='right' size='1.2'><t font='PuristaBold' size='1.6'>""%1""</t><t>%2</t>", toUpper _title, _author], true, nil, 7, 0.7, 0], BIS_fnc_textTiles] remoteExec ["spawn"];