class MRHJIPMENU
{
	idd=-1;
	movingenable=true;
	
	class controls 
	{

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Pifufe)
////////////////////////////////////////////////////////

class frame: RscFrame
{
	idc = 1800;
	text = "MRH JIP System"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.406875 * safezoneW;
	h = 0.28 * safezoneH;
};
class text1: RscText
{
	idc = 1000;
	text = "Vous avez rejoint en cours de partie."; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.28875 * safezoneW;
	h = 0.056 * safezoneH;
};
class texte2: RscText
{
	idc = 1001;
	text = "Désirez-vous être téléporté jusqu'au leader de votre groupe?"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
	y = 0.22 * safezoneH + safezoneY;
	w = 0.380625 * safezoneW;
	h = 0.07 * safezoneH;
};
class texte3: RscText
{
	idc = 1002;
	text = "(ne fonctionne que si le leader est encore en jeu)"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
	y = 0.276 * safezoneH + safezoneY;
	w = 0.3675 * safezoneW;
	h = 0.028 * safezoneH;
};
class RscText_1003: RscText
{
	idc = 1003;
	x = -0.335317;
	y = 0.25;
	w = 0.1;
	h = 0.1;
};
class boutonoui: MRHJIPRscButton
{
	idc = 1600;
	text = "Oui"; //--- ToDo: Localize;
	x = 0.276875 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.07 * safezoneH;
	action = "closedialog 0, nul = execVM ""JIP.sqf""";
};
class boutonnon: MRHJIPRscButton
{
	idc = 1601;
	text = "Non"; //--- ToDo: Localize;
	x = 0.349063 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.07 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

	
};
};
