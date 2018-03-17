disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1010;
if(isNull _display) exitWith {};
params[["_type", ""]];
private _index = lbCurSel 2100;
private _data = [];
if(_index > -1) then {
      private _d = _display getVariable["data", []];
      private _id = parseNumber(lbData[2100, _index]);
      {
            if((_x select 0) == _id) exitWith {
                  _data = _x;
            };
      } forEach _d;
};
private _buttonWithdraw = _display displayCtrl 1600;
private _buttonDeposit = _display displayCtrl 1601;
private _buttonTransfer = _display displayCtrl 1602;
if(_type == "LB") exitWith {
      if((count _data) != 0) then {
            _data params["_id", "_account_number","_profile_id","_cash"];
      };
};
if(_type == "WITHDRAW") exitWith {
      if((count _data) != 0) then {
            _data params["_id", "_account_number","_profile_id","_cash"];
            private _amount = parseNumber(ctrlText 1400);
            if (_amount <= _cash) then {
                  [_profile_id, player, "Client_fnc_atm_receive"] remoteExec ["Server_fnc_bankGetProfile", 2];
                  [_account_number,"SUB",_amount] remoteExecCall ["Server_fnc_handleBank", 2];
                  [player, "ADD", _amount] remoteExec ["Server_fnc_handleCash", 2];
                  [] remoteExec ["client_fnc_atm_open",player];
            } else {
                  ["You dont have that much money to withdraw", true] call Client_fnc_domsg;
            };
      };
};
if(_type == "DEPOSIT") exitWith {
      if((count _data) != 0) then {
            _data params["_id", "_account_number","_profile_id","_cash"];
            private _amount = parseNumber(ctrlText 1400);
            if ([_amount] call Client_fnc_checkMoney) then {
                  [_account_number,"ADD",_amount] remoteExecCall ["Server_fnc_handleBank", 2];
                  [_amount] remoteExecCall ["Client_fnc_removeCash", 2];
                  [player, "SUB", _amount] remoteExec ["Server_fnc_handleCash", 2];
                  [] remoteExec ["client_fnc_atm_open",player];
            } else {
                  ["You dont have enough money to deposit", true] call Client_fnc_domsg;
            };
      };
};if(_type == "TRANSFER") exitWith {
      if((count _data) != 0) then {
            _data params["_id", "_account_number","_profile_id","_cash"];
            private _amount = parseNumber(ctrlText 1402);
            private _toAccount = ctrlText 1401;
            [_account_number,_toAccount,_amount] remoteExecCall ["Server_fnc_bankTransfer", 2];
            [] remoteExec ["client_fnc_atm_open",player];
      };
};
