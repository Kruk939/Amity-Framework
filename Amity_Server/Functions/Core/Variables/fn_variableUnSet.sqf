params[["_id", -1], ["_type", ""], ["_object", objNull], ["_player", objNull]];
if(_id == -1 || _type == "" || isNull _object) exitWith {};
private _select = switch(_type) do {
      case "FACTION": {1};
      case "PROFILE": {2};
      case "USER": {3};
      case "GARAGE": {4};
};
{
      _x params["", "", "", "", "", "_name", "", "", "_public", "_server"];
      private _i = _x select _select;
      if(typeName _i != "OBJECT") then {
            if(_i == _id) then {
                  if(_public == 1) then {
                        _object setVariable[_name, nil, true];
                  } else {
                        if(_server == 1) then {
                              _object setVariable[_name, nil];
                        } else {
                              if(!isNull _player) then {
                                    [_object, [_name, nil]] remoteExec["setVariable", _player];
                              };
                        };
                  };
            };
      };
} foreach amity_var_variables;
