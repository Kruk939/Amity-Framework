params[["_id", -1]];
if(_id == -1) exitWith {};
private _faction = [_id] call Server_fnc_factionGet;
if((count _faction) == 0) exitWith {};
_faction params ["_id", "_profile_id", "_short_name", "_full_name", "_type", "_bank", "_upkeep"];
private _banks = [_profile_id] call Server_fnc_bankGetProfile;
if(_bank > 0) then {
      private _bankaccount = "";
      if((count _banks) != 0) then {
            private _temp = _banks select 0;
            _temp params["_id", "_account_number", "", ""];
            _bankaccount = _account_number;
      } else {
            _bankaccount = [_profile_id] call Server_fnc_createBank;
      };
      [_bankaccount, "ADD", _bank] call Server_fnc_handleBank;
      private _player = [_profile_id] call Client_fnc_getPlayerByProfile;
      if(!isNull _player) then {
            [["You have been transfered $%1 on your account(%2) due to company removal", _bank, _bankaccount], true] remoteExecCall ["Client_fnc_domsg", _player];
      };
} else {
      if(_bank < 0) then {
            if((count _banks) != 0) then {
                  private _sum = _bank;
                  {
                        _x params["_id", "_account_number", "_profile_id", "_cash"];
                        private _toRemove = 0;
                        if(_cash >= _sum) exitWith {
                              [_account_number, "SUB", _sum] call Server_fnc_handleBank;
                              _sum = 0;
                        };
                        [_account_number, "SUB", _cash] call Server_fnc_handleBank;
                        _sum = _sum - _cash;
                  } foreach _banks;
                  if(_sum > 0) then {
                        private _temp = _banks select 0;
                        _temp params["_id", "_account_number", "_profile_id", "_cash"];
                        [_account_number, "SUB", _sum] call Server_fnc_handleBank;

                  };
            } else {
                  private _account_number = [_profile_id] call Server_fnc_createBank;
                  [_account_number, "SUB", _bank] call Server_fnc_handleBank;
            };
      };
};
["onFactionRemove", _faction] call Client_fnc_eventCall;


private _query = format["core_faction_delete:%1", _id];
[0, _query] call ExternalS_fnc_ExtDBquery;
