params[["_variable", ""]];
private _ret = configNull;
if(_variable == "") exitWith { _ret; };
_variable = toLower(_variable);
private _configs = [] call ClientModules_PublicJobs_fnc_getConfigs;
{
      if(toLower(getText( _x >> "variable")) == _variable) exitWith {
            _ret = _x;
      };
} forEach _configs;
_ret;
