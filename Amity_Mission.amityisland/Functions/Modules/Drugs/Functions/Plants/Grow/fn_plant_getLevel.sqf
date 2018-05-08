params[["_plant", objNull], ["_var", ""]];
if(isNull _plant || _var == "") exitWith { []; };

//reading config
private _config = [typeOf _plant, "plant"] call ClientModules_Drugs_fnc_plant_getConfig;
if(isNull _config) exitWith { []; };
private _actions = getArray(_config >> "Growing" >> "actions");
private _levels = getArray(_config >> "Growing" >> "levels");

//getting action to read variable
private _action = [];
{
      _x params["_v", "", "", "_va"];
      if(_v == _var || _var == _va) exitWith {
            _action = _x;
      };
} forEach _actions;
if(count _action == 0) exitWith { []; };
_action params["", "", "", "_variable"];

//getting level
private _level = [];
{
      if((_x select 0) == _variable) exitWith {
            _level = _x;
      };
} forEach _levels;
_level;
