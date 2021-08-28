params[["_id", -1], ["_player", objNull], ["_function", ""]];
private _ret = [];
if(_id == -1) exitWith { _ret; };
{
      if(_id == (_x select 0)) exitWith {
            _ret = _x;
      };
} forEach housing_var_houses;
if(!isNull _player && _function != "") exitWith {
      [_ret] remoteExecCall[_function, _player];
};
_ret;
