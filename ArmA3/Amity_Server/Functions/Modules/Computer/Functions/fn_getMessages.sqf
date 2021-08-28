params[["_faction_id", -1]];
private _ret = [];
if(_faction_id == -1) exitWith { _ret; };
{
      _x params["_id", "_messages"];
      if(_id == _faction_id) exitWith {
            _ret = _messages;
      };
} forEach computer_var_messages;
_ret;
