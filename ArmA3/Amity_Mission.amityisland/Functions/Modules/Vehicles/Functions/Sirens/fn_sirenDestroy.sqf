private _vehicle = vehicle player;
private _source = _vehicle getVariable["Vehicle_SirenSource", objNull];
if(!isNull _source) then {
	deleteVehicle _source;
	_vehicle setVariable["Vehicle_SirenSource", objNull, true];
};
if(!isNull Vehicles_var_sirens_sound) then {
	deleteVehicle Vehicles_var_sirens_sound;
	Vehicles_var_sirens_sound = objNull;
};
