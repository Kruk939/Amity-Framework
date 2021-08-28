params["_key"];
private _ret = [];
if(isNil "_key") exitWith { _ret; };
if(typeName _key == "SCALAR") then { _key = str(_key); };
{
      _x params["_id", "", "_name", "_number"];
      if(_key == str(_id) || _key == _name || _key == _number) exitWith {
            _ret = _x;
      };
} forEach phone_var_contacts;
_ret;
