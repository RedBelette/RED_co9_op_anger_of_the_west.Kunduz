[
	10,
	[],
	{
		["script\server\action\contactTaken.sqf"] call TGV_fnc_execScriptOnServer;
	},
	{hint "Conversation interrompue."},
	"Conversation en cours."
] call ace_common_fnc_progressBar;