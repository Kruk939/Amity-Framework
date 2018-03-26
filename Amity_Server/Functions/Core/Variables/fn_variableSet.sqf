params[["_id", -1], ["_type", ""], ["_object", objNull], ["_player", objNull]];
if(_id == -1 || _type == "" || isNull _object) exitWith {};
private _fnc_format = {
      params[["_value", ""], ["_type", ""]];
      private _ret = switch(_type) do {
            case "STRING": {_value};
            case "SCALAR": {parseNumber(_value)};
            case "CODE": {compile _value};
            case "ARRAY": {call (compile _value)};
      };
      _ret;
};
private _select = switch(_type) do {
      case "FACTION": {1};
      case "PROFILE": {2};
      case "USER": {3};
      case "GARAGE": {4};
};
{
      _x params["", "", "", "", "", "_name", "_value", "_type", "_public", "_server"];
      private _i = _x select _select;
      if(typeName _i != "OBJECT") then {
            if(_i == _id) then {
                  _value = [_value, _type] call _fnc_format;
                  if(_public == 1) then {
                        _object setVariable[_name, _value, true];
                  } else {
                        if(_server == 1) then {
                              _object setVariable[_name, _value];
                        } else {
                              if(!isNull _player) then {
                                    [_object, [_name, _value]] remoteExec["setVariable", _player];
                              };
                        };
                  };
            };
      };
} foreach amity_var_variables;
