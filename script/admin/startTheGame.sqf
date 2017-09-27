loadEnemies=true;

["Attention, la mission démarre"] remoteExec ["hint"];

sleep 10;

[parseText format [ "<t align='right' size='1.2'><t font='PuristaBold' size='1.6'>""%1""</t><t>%2</t>", toUpper "Colère de l'ouest", "by RedBelette"], true, nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;

execVM "script\ia\eastDefendArea.sqf";