params[["_id", -1]];
private _ret = [];
if(_id == -1) exitWith { _ret; };
{
      if(_id == (_x select 0)) exitWith {
            _ret = _x;
      };
} forEach housing_var_modules;
_ret;
