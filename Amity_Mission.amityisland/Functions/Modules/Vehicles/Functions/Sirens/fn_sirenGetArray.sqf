params[["_vehicle", objNull]];
private _array = [];
if(_vehicle == player) exitWith { _array; };
if(driver _vehicle != player) exitWith { _array; };
_array = getArray(configFile >> "CfgVehicles" >> typeOf _vehicle >> "SirenArray");
_array;
