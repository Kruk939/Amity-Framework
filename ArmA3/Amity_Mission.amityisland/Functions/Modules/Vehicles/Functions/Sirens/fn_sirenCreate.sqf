private _vehicle = vehicle player;
private _source = _vehicle getVariable["Vehicle_SirenSource", objNull];
private _array =  [_vehicle] call ClientModules_Vehicles_fnc_sirenGetArray;
if(!isNull(_source)) then {
	deleteVehicle _source;
	_vehicle setVariable["Vehicle_SirenSource", objNull, true];
} else {
	if(count _array == 0) exitWith {};
	Vehicles_var_sirens_sound = createSoundSource[_array select Vehicles_var_sirens_current, getPos _vehicle, [], 0];
	Vehicles_var_sirens_sound attachTo[_vehicle, [0,0,0]];
	_vehicle setVariable["Vehicle_SirenSource", Vehicles_var_sirens_sound, true];
};
