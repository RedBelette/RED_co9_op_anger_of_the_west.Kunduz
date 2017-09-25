if (isServer or call TGV_fnc_isAdmin) then {

	_note = "
		<font size='18'>NOTE DE MISSION POUR LE GAME MASTER</font><br/>
		Les unités se charge dynamiquement dans cette mission.<br/><br/>
		";

	player createDiaryRecord ["diary", ["TGV Note Administrateur",_note]];
} else {
	_note = "
		<font size='18'>ACCEDER AU NOTE ADMIN</font><br/>
		|- <execute expression=""execVM 'script\briefing\note.sqf';"">
		Demander les notes admin.</execute><br/>
		";
	player createDiaryRecord ["diary", ["TGV Note Administrateur",_note]];
}