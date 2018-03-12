params ["_disp","_keycode","_shift","_ctrl","_alt"];
private _handle = false;
private _check = {
      params["_compare", "_to"];
      private _ret = true;
      if((typeName _compare == "BOOL") &&  (typeName _to == "BOOL")) then {
            if(!(_compare isEqualTo _to)) then {
                  _ret = false;
            };
      };
      _ret;
};
{
      if((_x select 0) == _keycode) exitWith {
            _x params["_key", "_arr"];
            {
                  _x params["", "_key_data", "_function"];
                  _key_data params["_sh", "_ct", "_al", "_di"];
                  private _ch1 = [_shift, _sh] call _check;
                  private _ch2 = [_ctrl, _ct] call _check;
                  private _ch3 = [_alt, _al] call _check;
                  private _ch4 = [_disp, _di] call _check;
                  if(_ch1 && _ch2 && _ch3 && _ch4) then {
                        private _ret = objNull;
                        if(typeName _function == "STRING") then {
                              _function = call compile _function;
                        };
                        _ret = _this call _function;
                        if(typeName _ret == "BOOL") then {
                              if(!_handle) then {
                                    _handle = _ret;
                              };
                        };
                  };
            } forEach _arr;
      };
} forEach amity_var_keys;
_handle;
