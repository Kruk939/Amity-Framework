params[["_id", -1]];
private _ret = [];
{
      if((_x select 0) == _id) exitWith {
            _ret = _x;
      };
} forEach taxes_var_all;
_ret;
