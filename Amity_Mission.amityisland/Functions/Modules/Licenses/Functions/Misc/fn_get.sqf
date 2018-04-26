params[["_id", -1]];
private _ret = [];
if(_id == -1) exitWith { _ret; };
{
      if((_x select 0) == _id) exitWith {
            _ret = _x;
      };
} forEach licenses_var_all;
_ret;
