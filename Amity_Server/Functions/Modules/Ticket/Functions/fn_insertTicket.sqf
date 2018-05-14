params[["_player", objNull], ["_officer", objNull], ["_data", []]];
if(count _data == 0) exitWith {};
if(isNull _player || isNull _officer) exitWith {};
private _profile_id = _player getVariable["profile_id", -1];
private _officer_id = _officer getVariable["profile_id", -1];
if(_profile_id == -1 || _officer_id == -1) exitWith {};

_data params["_amount", "_reason", "_points", "_preset"];

private _banks = [_profile_id] call Server_fnc_bankGetProfile;
if((count _banks) == 0) exitWith {};
private _paid = false;
{
      _x params["", "_account_number", "", "_cash"];
      if(_cash >= _amount) exitWith {
            [_account_number, "SUB", _amount] call Server_fnc_handleBank;
            _paid = true;
      };
} forEach _banks;
if(_paid) then {
      if(_preset == -1) then { _preset = ""; };
      [0, format["ticket_insert_new:%1:%2:%3:%4:%5:%6", _profile_id, _officer_id, _amount, _points, _reason, _preset]] call ExternalS_fnc_ExtDBquery;
      [["STR_TICKET_ACTION_PAID", _player getVariable["name", ""]], true] remoteExec["Client_fnc_domsg", _officer];
      ["STR_TICKET_ACTION_PAID_P", true] remoteExec["Client_fnc_domsg", _player];
      private _left = _amount;
      private _split = getArray(missionConfigFile >> "Ticket" >> "Config" >> "Money" >> "split");
      {
            _x params["_faction_id", "_perc"];
            private _am = floor(_amount * (_perc / 100));
            _left = _left - _am;
            if(_left < 0) exitWith { _left = _left + _am; };
            [_faction_id, "ADD", _am] call Server_fnc_factionBankTransfer;
      } forEach _split;
      if(_left > 0) then {
            [getNumber(missionConfigFile >> "Ticket" >> "Config" >> "Money" >> "defaultFaction"), "ADD", _left] call Server_fnc_factionBankTransfer;      
      };
} else {
      [["STR_TICKET_ACTION_NOT_ENOUGH", _player getVariable["name", ""]], true] remoteExec["Client_fnc_domsg", _officer];
      ["STR_TICKET_ACTION_NOT_ENOUGH_P", true] remoteExec["Client_fnc_domsg", _player];
};
