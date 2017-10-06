params ["_key"];

_trigger = [_key] call TGV_fnc_getAction;

_statements = ["","",""];

_trigger setTriggerStatements _statements;