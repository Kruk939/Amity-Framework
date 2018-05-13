params[["_var", ""], ["_variable", "variable"]];
private _ret = configNull;
if(_variable == "") exitWith { _ret; };
_variable = toLower(_variable);
private _configs = [] call ClientModules_Growing_fnc_plant_getConfigs;
{
      if(toLower(getText( _x >> _variable)) == _var) exitWith {
            _ret = _x;
      };
} forEach _configs;
_ret;
