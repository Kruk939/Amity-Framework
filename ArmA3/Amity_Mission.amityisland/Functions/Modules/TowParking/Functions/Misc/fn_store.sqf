params[["_vehicle", objNull]];
private _ret = false;
if(isNull _vehicle) exitWith { _ret; };
if(_vehicle IN ([] call ClientModules_TowParking_fnc_getNearest)) then {
      [_vehicle] remoteExecCall ["Server_fnc_storeVehicle", 2];
      _ret = true;
};
_ret;
