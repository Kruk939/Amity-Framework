params[["_jail_id", -1]];
private _jail = configNull;
if(_jail_id == -1) then {
      _jail = [player] call ClientModules_Jail_fnc_jail_getNearest;
} else {
      _jail = [_jail_id, "id"] call ClientModules_Jail_fnc_jail_getConfig;
};
if(isNull _jail) exitWith { objNull; };
if(getNumber(_jail >> "Locker" >> "enable") == 0) exitWith { objNull; };
nearestObject [getArray(_jail >> "Locker" >> "position"), getText(_jail >> "Locker" >> "objClass")];
