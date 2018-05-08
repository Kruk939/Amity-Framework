params[["_object", objNull]];
private _ret = false;
if(isNull _object) exitWith { _ret; };
private _config = [typeOf _object, "plant"] call ClientModules_Drugs_fnc_plant_getConfig;
if(!isNull _config) then { _ret = true; };
_ret;
