params[["_plant", objNull], ["_var", ""]];
private _function = getText(_config >> "Grow" >> "Functions" >> "check");
if(!isNil _function && _function != "") exitWith { _this call (call compile _function); };

private _level = [_plant, _var] call ClientModules_Drugs_fnc_plant_getLevel;
if((count _level) != 0) then { [_plant, _level, true] call ClientModules_Drugs_fnc_plant_checkLevel; };
