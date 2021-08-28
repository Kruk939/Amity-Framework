params[["_player", objNull], ["_time", 0]];
if(isNull _player || _time == 0) exitWith {};
private _member_id = _player getVariable["faction_member_id", -1];
private _faction_id = _player getVariable["faction_id", -1];
if(_member_id == -1 || _faction_id == -1) exitWith {};
private _faction = [_faction_id] call Server_fnc_factionGet;
private _member = [_member_id] call Server_fnc_memberGet;
_member params["", "", "_profile_id", "", "_salary", ""];
_faction params["", "", "_faction_short_name", "_faction_full_name", "", "_bank", ""];
if(typeName _salary != "OBJECT") then {
      private _toPay = round((_salary / 3600) * _time);
      if(_bank >= _toPay) then {
            private _banks = [_profile_id] call Server_fnc_bankGetProfile;
            if((count _banks) != 0) then {
                  [_faction_id, "SUB", _toPay] call Server_fnc_factionBankTransfer;
                  private _bank = _banks select 0;
                  _bank params["", "_account_number", "", ""];
                  [_account_number, "ADD", _toPay] call Server_fnc_handleBank;
                  [["You have received $%1 from [%2] %3 as a paycheck.", _toPay, _faction_short_name, _faction_full_name], true] remoteExecCall["Client_fnc_domsg", _player];
            } else {
                  [["You couldn't receive $%1 from [%2] %3 as a paycheck, due to not having any bank account.", _toPay, _faction_short_name, _faction_full_name], true] remoteExecCall["Client_fnc_domsg", _player];
                  //player doesn't have bank account
            };
      } else {
            [["[%2] %3 does not have enough money, to transfer your paycheck($%1).", _toPay, _faction_short_name, _faction_full_name], true] remoteExecCall["Client_fnc_domsg", _player];
            //not enough money to pay employee
      };
};
