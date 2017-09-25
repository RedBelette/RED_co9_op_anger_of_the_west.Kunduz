// Si nous sommes sur un serveur, il faut être logger pour accéder à zeus
_curator = _this select 0;
if (isServer) then {
	player assignCurator _curator;
}
