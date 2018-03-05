params[["_name", ""], "_params", "_target"];
private _ret = false;
if(isNil "_params") then { _params = []; };
diag_log format["--------- Call %1: params: %2", _name, _params];
if(_name != "") then {
      {
            _x params["_event", "_local", "_listeners"];
            if(_event == _name) exitWith {
                  if(isNil "_target") then {
                        // call localy on player
                        {
                              if(typeName _x == "STRING") then {
                                    _params call (call compile _x);
                              } else {
                                    _params call _x;
                              };
                        } foreach _listeners;
                        _ret = true;
                  } else {
                        if(!_local) then {
                              {
                                    if(typeName _x == "STRING") then {
                                          if(!isNil _x) then {
                                                [_name, _params] remoteExecCall ["Client_fnc_eventCall", _target];
                                          };
                                    }
                              } foreach _listeners;
                              _ret = true;
                        };
                  };
            };
      } foreach amity_var_events;
};
_ret;
