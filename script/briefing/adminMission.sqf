if (isServer or call TGV_fnc_isAdmin) then {

	_adminMission = "
		<font size='18'>LANCER LE SCENARIO</font><br/>
		|- <execute expression=""startTheGame=true; publicVariableServer 'startTheGame';"">
		Cliquer ici pour commencer la mission.</execute><br/>
		<font size='18'>COMMANDES MANUELLES</font><br/>
		|- <execute expression=""loadEnemies=true; publicVariableServer 'loadEnemies';"">
		Cliquer ici pour charger les unités ennemies.</execute><br/>
		|- <execute expression=""execVM 'script\ia\eastDefendArea.sqf';"">
		Cliquer ici pour appliquer la défense sur les unités ennemies.</execute><br/>
		|- <execute expression=""southSpawn=true; publicVariableServer 'southSpawn';"">
		Cliquer ici pour charger les unités alliés du sud.</execute><br/>
		|- <execute expression=""westSpawn=true; publicVariableServer 'westSpawn';"">
		Cliquer ici pour charger les unités alliés de l'ouest.</execute><br/>
		|- <execute expression=""aerialSpawn=true; publicVariableServer 'aerialSpawn';"">
		Cliquer ici pour charger les unités alliés aérienne.</execute><br/>
		|- <execute expression=""tankSpawn=true; publicVariableServer 'tankSpawn';"">
		Cliquer ici pour charger les unités du nord (tanks).</execute><br/>
		";

	player createDiaryRecord ["diary", ["TGV Administration Mission",_adminMission]];
} else {
	_adminMission = "
		<font size='18'>ACCEDER AU MODE ADMINISTRATION DE MISSION</font><br/>
		|- <execute expression=""execVM 'script\briefing\adminMission.sqf';"">
		Demander les droits pour l'administration de la mission.</execute><br/>
		";
	player createDiaryRecord ["diary", ["TGV Administration Mission",_adminMission]];
}