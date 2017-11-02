_var = player getVariable "teleportPos";
if (!isNil "_var") then {
	player setDir 45;
	player setPos _var;
};