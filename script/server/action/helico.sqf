helico1 enableSimulation true;
helico2 enableSimulation true;
helico3 enableSimulation true;
helico4 enableSimulation true;

{
_x enableSimulation true;
} forEach units helico;

[helico, [1981.78,2755.8,100], 200] call CBA_fnc_taskAttack;