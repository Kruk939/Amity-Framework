params["_var", "_variable"];
private _ret = configNull;
if(isNil "_var") exitWith { _ret; };
if(isNil "_variable") exitWith { _variable = "variable"; };
private _fnc = switch(typeName _var) do {
      case "STRING": {
            {
                  params["_var", "_variable", "_config"];
                  (toLower(getText(_config >> _variable)) == _var);
            };
      };
      case "SCALAR": {
            {
                  params["_var", "_variable", "_config"];
                  ((getNumber(_config >> _variable)) == _var);
            };
      };
};


_variable = toLower(_variable);
private _configs = [] call ClientModules_Jail_fnc_jail_getConfigs;
{
      if([_var, _variable, _x] call _fnc) exitWith {
            _ret = _x;
      };
} forEach _configs;
_ret;
