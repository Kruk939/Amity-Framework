params[["_from_acc", ""], ["_to_acc", ""], ["_amount", 0], ["_player", objNull], ["_function", ""]];
if(_from_acc == "" || _to_acc == "" || _amount <= 0) exitWith {};
private _from_bank = [_from_acc] call Server_fnc_bankGetAccount;
private _to_bank = [_to_acc] call Server_fnc_bankGetAccount;

_to_bank params["_id", "_account_number", "_profile_id", "_cash"];
private _to_profile = _profile_id;

_from_bank params["_id", "_account_number", "_profile_id", "_cash"];
private _from_profile = _profile_id;
if(_cash < _amount) exitWith {};


[_from_acc, "SUB", _amount] call Server_fnc_handleBank;
[_to_acc, "ADD", _amount] call Server_fnc_handleBank;

if(_from_profile != _to_profile) then {
      private _from_obj = [_from_profile] call Client_fnc_getPlayerByProfile;
      private _to_obj = [_to_bank] call Client_fnc_getPlayerByProfile;
      if(!isNull _to_obj) then {
            [["STR_CORE_ATM_ACTION_TRANSFER_RECEIVE", _amount, _from_acc, _to_acc], true] remoteExec ["Client_fnc_domsg", _to_obj];
      };
      if(!isNull _from_obj) then {
            [["STR_CORE_ATM_ACTION_TRANSFER_SEND", _amount, _to_acc, _from_acc], true] remoteExec ["Client_fnc_domsg", _from_obj];
      };
} else {
      private _from_obj = [_from_profile] call Client_fnc_getPlayerByProfile;
      if(!isNull _from_obj) then {
            [["STR_CORE_ATM_ACTION_TRANSFER_BETWEEN", _amount, _from_acc, _to_acc], true] remoteExec ["Client_fnc_domsg", _from_obj];
      };
};
