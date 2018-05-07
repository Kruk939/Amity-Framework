params[["_vehicle", objNull]];
if(isNull _vehicle) exitWith {};
private _id = _vehicle getVariable["id", -1];
if(_id == -1) exitWith { deleteVehicle _vehicle; };
[_vehicle] call Server_fnc_saveVehicle;
private _query = [format["core_garage_set_status:%1:%2", _id, 0], 2] call ExternalS_fnc_ExtDBasync;
deleteVehicle _vehicle;
