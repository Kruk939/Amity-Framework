params[["_obj", objNull]];
if(isNull _obj) exitWith {};
amity_var_vehicles pushBack _obj;
private _name = getText(configFile >> "CfgVehicles" >> typeOf _obj >> "displayName");
[["STR_CORE_AMITY_KEYS_RECEIVED", _name], true] call Client_fnc_domsg;
