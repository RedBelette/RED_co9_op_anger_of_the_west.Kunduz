params ["_position"];

_satelittePosX = _position select 0;
_satelittePosY = _position select 1;
_satelittePosZ = _position select 2;

_satelitte = "ACE_HuntIR" createVehicle [_satelittePosX,_satelittePosY,_satelittePosZ];
_satelitte setPos [_satelittePosX,_satelittePosY,_satelittePosZ];

hideObject _satelitte;
_satelitte allowDamage false;

onEachFrame {
	satelitte setVelocityTransformation [
		[_satelittePosX,_satelittePosY,_satelittePosZ],
		[_satelittePosX,_satelittePosY,_satelittePosZ],
		[0,0,0],
		[0,0,0],
		[0,0,0],
		[0,0,0],
		[0,0,0],
		[0,0,0],
		0
	];
};

_satelitte
