params ["_job", "_time"];

trigger = createTrigger ["EmptyDetector", [0,0,0], false];
trigger setTriggerActivation ["NONE", "PRESENT", true];
trigger setTriggerStatements ["thisTrigger", _job, ""];
trigger setTriggerTimeout [_time, _time, _time, true];

trigger
