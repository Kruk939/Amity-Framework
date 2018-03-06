params[["_vehicle", objNull]];
if(isNull _vehicle) exitWith {};
private _id = _vehicle getVariable["id", -1];
if(_id == -1) exitWith {};
private _query = [format["core_garage_update:%1:%2:%3:%4:%5:%6", _id, [_vehicle] call Client_fnc_vehicleHitGet, getDammage _vehicle, fuel _vehicle, getPosATL _vehicle, []], 2] call ExternalS_fnc_ExtDBasync;
