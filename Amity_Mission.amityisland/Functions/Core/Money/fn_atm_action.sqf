
params[["_type", ""]];
disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1010;
if(isNull _display) exitWith { closeDialog 0; };
private _data = _display getVariable["data", []];
private _find_account_fnc = {
      params[["_id", -1]];
      private _ret = [];
      if(_id == -1) exitWith {};
      {
            if(_id == (_x select 0)) exitWith {
                  _ret = _x;
            };
      } forEach _data;
      //["_id", "_account_number","_profile_id","_cash"]
      _ret;
};
private _check_amount_fnc = {
      params[["_idc", -1]];
      if(_idc == -1) exitWith {};
      private _amount = parseNumber(ctrlText _idc);
      private _min = 1;
      private _max = 999999;
      if(_amount < _min) then { _amount = _min; };
      if(_amount > _max) then { _amount = _max; };
      ctrlSetText[_idc, str(_amount)];
};

if(_type == "AMOUNT_1") exitWith {
      [1400] call _check_amount_fnc;
};
if(_type == "AMOUNT_2") exitWith {
      [1402] call _check_amount_fnc;
};

if(_type == "LB") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _account = [parseNumber(lbData[2100, _index])] call _find_account_fnc;
      if(count _account == 0) exitWith {};
      ctrlSetText[1001, format["$%1", (_account select 3)]];
};
if(_type == "WITHDRAW") exitWith {
      if(time - amity_var_cash_last_action < getNumber(missionConfigFile >> "Amity" >> "Setup" >> "timeLock")) exitWith {};
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _account = [parseNumber(lbData[2100, _index])] call _find_account_fnc;
      if(count _account == 0) exitWith {};
      private _amount = parseNumber(ctrlText 1400);
      if(_amount <= 0) exitWith {};
      private _player_cash = player getVariable["cash", -1];
      _account params ["_id", "_account_number","","_cash"];
      if(_amount <= _cash) then {
            amity_var_cash_last_action = time;
            ctrlEnable[1600, false];
            ctrlEnable[1601, false];
            ctrlEnable[1602, false];
            [_account_number,"SUB",_amount] remoteExecCall ["Server_fnc_handleBank", 2];
            [player, "ADD", _amount] remoteExec ["Server_fnc_handleCash", 2];
            ctrlSetText[1000, format["$%1",_player_cash + _amount]];
            ctrlSetText[1001, format["$%1", _cash - _amount]];
            _account set[3, _cash - _amount];
            _display setVariable["data", _data];

            [["STR_CORE_ATM_ACTION_WITHDRAW", _amount], true] call Client_fnc_domsg;
            closeDialog 0;
      } else {
            ["STR_CORE_ATM_ACTION_WITHDRAW_NO_MONEY", true] call Client_fnc_domsg;
      };
};
if(_type == "DEPOSIT") exitWith {
      if(time - amity_var_cash_last_action < getNumber(missionConfigFile >> "Amity" >> "Setup" >> "timeLock")) exitWith {};
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _account = [parseNumber(lbData[2100, _index])] call _find_account_fnc;
      if(count _account == 0) exitWith {};
      private _amount = parseNumber(ctrlText 1400);
      if(_amount <= 0) exitWith {};
      private _player_cash = player getVariable["cash", -1];
      _account params ["_id", "_account_number","","_cash"];
      if ([_amount] call Client_fnc_checkMoney) then {
      amity_var_cash_last_action = time;
            ctrlEnable[1600, false];
            ctrlEnable[1601, false];
            ctrlEnable[1602, false];
            closeDialog 0;
            [_account_number,"ADD",_amount] remoteExecCall ["Server_fnc_handleBank", 2];
            [player, "SUB", _amount] remoteExec ["Server_fnc_handleCash", 2];
            ctrlSetText[1000, format["$%1",_player_cash - _amount]];
            ctrlSetText[1001, format["$%1", _cash + _amount]];
            _account set[3, _cash + _amount];
            _display setVariable["data", _data];
            [["STR_CORE_ATM_ACTION_DEPOSIT", _amount], true] call Client_fnc_domsg;
      } else {
            ["STR_CORE_ATM_ACTION_DEPOSIT_NO_MONEY", true] call Client_fnc_domsg;
      };
};
if(_type == "TRANSFER") exitWith {
      if(time - amity_var_cash_last_action < getNumber(missionConfigFile >> "Amity" >> "Setup" >> "timeLock")) exitWith {};
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _account = [parseNumber(lbData[2100, _index])] call _find_account_fnc;
      if(count _account == 0) exitWith {};
      private _amount = parseNumber(ctrlText 1402);
      if(_amount <= 0) exitWith {};
      amity_var_cash_last_action = time;
      _account params ["_id", "_account_number","","_cash"];
      private _toAccount = ctrlText 1401;
      [_account_number,_toAccount,_amount] remoteExecCall ["Server_fnc_bankTransfer", 2];
      _account set[3, _cash - _amount];
      ctrlSetText[1001, format["$%1", _cash - _amount]];
      _display setVariable["data", _data];
};
