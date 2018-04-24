params[["_var", ""]];
private _ret = false;
if((count permission_var_active) == 0 || (player getVariable["faction_id", -1] == -1)) exitWith { _ret; };
private _access = player getVariable["faction_access_level", -1];
if(_access == -1) exitWith { _ret; };
{
      _x params["", "_v", "_level"];
      if(_v == _var) exitWith {
            if(_level <= _access) then {
                  _ret = true;
            };
      };
} forEach permission_var_active;
_ret;
