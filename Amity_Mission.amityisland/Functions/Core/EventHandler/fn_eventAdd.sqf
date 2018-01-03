params[["_name", ""], "_code"];
private _ret = false;
if(_name != "" && !isNil "_code") then {
      if((typeName _code) IN ["STRING", "CODE"]) then {
            {
                  _x params["_event", "_local", "_listeners"];
                  if(_event == _name) exitWith {
                        _listeners pushBack _code;
                        _ret = true;
                  };
            } foreach amity_var_events;
      };
};
_ret;
