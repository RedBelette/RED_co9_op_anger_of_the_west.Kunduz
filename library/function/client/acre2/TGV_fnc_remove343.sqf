{
  if ([_x] call acre_api_fnc_getBaseRadio == "ACRE_PRC343") then {
    player removeItem _x;
  };
} forEach (call acre_api_fnc_getCurrentRadioList);
