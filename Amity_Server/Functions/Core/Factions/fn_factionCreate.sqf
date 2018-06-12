params[["_data", []], ["_player", objNull], ["_function", ""]];
private _ret = true;
_data params[["_type", ""], ["_short_name", ""], ["_full_name", ""], ["_profile_id", -1]];
if(_profile_id == -1) then {
      if(!isNull _player) then {
            _profile_id = _player getVariable["profile_id", -1];
            if(_profile_id == -1) then {
                  _ret = false;
            };
      };
};
if(_ret) then {
      _ret = false;
      private _types = getArray(missionConfigFile >> "Amity" >> "Misc" >> "Faction" >> "price");
      private _selected = [];
      {
            if((_x select 1) == _type) then {
                  _selected = _x;
            };
      } forEach _types;
      if(count _selected != 0) then {
            private _exists = (([format["core_faction_exists:%1:%2", _short_name, _full_name], 2] call ExternalS_fnc_ExtDBasync) select 0) select 0;
            if(!_exists) then {
                  _selected params["", "", "_price"];
                  private _banks = [_profile_id] call Server_fnc_bankGetProfile;
                  {
                        _x params["", "_account", "", "_cash"];
                        if(_price <= _cash) exitWith {
                              [_account, "SUB", _price] call Server_fnc_handleBank;
                              private _query = format["core_faction_insert:%1:%2:%3:%4", _profile_id, _type, _short_name, _full_name];
                              [0, _query] call ExternalS_fnc_ExtDBquery;
                              _ret = true;

                        };
                  } foreach _banks;
                  if(!isNull _player) then {
                        if(_ret) then {
                              ["STR_FACTION_CREATE_SUCCESSFULL", true] remoteExecCall["Client_fnc_domsg", _player];
                        } else {
                              ["STR_FACTION_CREATE_NOT_ENOUGH_MONEY", true] remoteExecCall["Client_fnc_domsg", _player];
                        };
                  };
            } else {
                  if(!isNull _player) then {
                        ["STR_FACTION_CREATE_EXISTS", true] remoteExecCall["Client_fnc_domsg", _player];
                  };
            };
      };
};
if(!isNull _player && _function != "") exitWith {
      _ret remoteExecCall[_function, _player];
};
_ret;
