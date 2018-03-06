params[["_vehicle", objNull]];
if(isNull _vehicle) exitWith {};
private _id = _vehicle getVariable["id", -1];
if(_id == -1) exitWith {};
private _query = [format["core_garage_update_damage:%1:%2", _id, getDammage _vehicle, [_vehicle] call Client_fnc_vehicleHitGet, fuel _vehicle], 2] call ExternalS_fnc_ExtDBasync;
