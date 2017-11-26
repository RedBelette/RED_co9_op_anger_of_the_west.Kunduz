if (isServer or call TGV_fnc_isAdmin) then {

	_adminMission = "
		<font size='18'>LANCER LE SCENARIO</font><br/>
		|- <execute expression=""'script\server\start\startTheGame.sqf' remoteExec ['execVM', 2, false];"">
		Cliquer ici pour commencer la mission.</execute><br/>
		<font size='18'>TERMINER LE SCENARIO</font><br/>
		|- <execute expression=""'script\server\start\endTheGame.sqf' remoteExec ['execVM', 2, false];"">
		Cliquer ici pour terminer la mission.</execute><br/>
		";

	player createDiaryRecord ["diary", ["Administration mission",_adminMission]];
} else {
	_adminMission = "
		<font size='18'>ACCEDER AU MODE ADMINISTRATION DE MISSION</font><br/>
		|- <execute expression=""execVM 'script\briefing\adminMission.sqf';"">
		Demander les droits pour l'administration de la mission.</execute><br/>
		";
	player createDiaryRecord ["diary", ["Administration mission",_adminMission]];
}