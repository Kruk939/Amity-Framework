params[["_data", []], ["_active", true]];
private _ret = 0;
if(count _data == 0) exitWith { _ret; };
{
      _x params["_id", "_a", "_timeLeft", "_security", "_reason"];
      if(_a == 0 && !_active || _a == 1) then {
            _ret = _ret + _timeLeft;
      };
} forEach _data;
_ret;
