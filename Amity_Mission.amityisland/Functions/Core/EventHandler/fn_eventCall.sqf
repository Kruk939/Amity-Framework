params[["_name", ""], "_params", "_target"];
private _ret = false;
if(isNil "_params") then { _params = []; };
if(_name != "") then {
      {
            _x params["_event", "_local", "_listeners"];
            if(_event == _name) exitWith {
                  if(isNil "_target") then {
                        // call localy on player
                        {
                              if(typeOf _x == "STRING") then {
                                    _params call (call compile _x);
                              } else {
                                    _params call _x;
                              };
                        } foreach _listeners;
                        _ret = true;
                  } else {
                        if(!_local) then {
                              {
                                    if(typeOf _x == "STRING") then {
                                          if(!isNil _x) then {
                                                _params remoteExecCall [_x, _target];
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
