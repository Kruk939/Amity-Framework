params[["_name", ""], "_params", "_target"];
private _ret = false;
if(isNil "_params") then { _params = []; };
diag_log format["--------- Call %1: params: %2", _name, _params];
if(_name != "") then {
      {
            _x params["_event", "_local", "_listeners"];
            if(_event == _name) exitWith {
                  if(isNil "_target") then {
                        {
                              private _temp = objNull;
                              if(typeName _x == "STRING") then {
                                    _temp = _params call (call compile _x);
                              } else {
                                    _temp = _params call _x;
                              };
                              if(!isNil "_temp") then {
                                    if(typeName _temp == "BOOL" && !_ret) then {
                                          _ret = _temp;
                                    };
                              };
                        } foreach _listeners;
                  } else {
                        if(!_local) then {
                              [_name, _params] remoteExecCall ["Client_fnc_eventCall", _target];
                              _ret = false;
                        };
                  };
            };
      } foreach amity_var_events;
};
_ret;