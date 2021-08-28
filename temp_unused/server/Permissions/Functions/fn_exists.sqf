params[["_var", ""]];
private _found = false;
if(_var == "") exitWith { _found; };
{
      _x params["", "_v", ""];
      if(_var == _v) exitWith {
            _found = true;
      };
} forEach permissions_var_all;
_found;
