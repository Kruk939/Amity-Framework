params[["_plant", objNull], ["_var", ""]];
private _level = [_plant, _var] call ClientModules_Drugs_fnc_getLevel;
if((count _level) != 0) then { [_plant, _level, true] call ClientModules_Drugs_fnc_plant_checkLevel; };
