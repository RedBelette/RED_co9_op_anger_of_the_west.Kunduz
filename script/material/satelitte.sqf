satelittePosX = _this select 0;
satelittePosY = _this select 1;
satelittePosZ = _this select 2;

satelitte = "ACE_HuntIR" createVehicle [satelittePosX,satelittePosY,satelittePosZ];
satelitte setPos [satelittePosX,satelittePosY,satelittePosZ];

hideObject satelitte;
satelitte allowDamage false;

onEachFrame {
	satelitte setPos [satelittePosX,satelittePosY,satelittePosZ];
};