params[["_type", ""]];
disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1011;
if(isNull _display) exitWith { closeDialog 0; };
private _data = _display getVariable["data", []];
private _bank = _display getVariable["bank", []];
private _faction_id = player getVariable["faction_id", -1];
if(_faction_id == -1) exitWith { closeDialog 0; };

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
if(_type == "WITHDRAW") exitWith {
      //permision check
      if(!(["faction_atm_withdraw"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

      if(time - amity_var_cash_last_action < getNumber(missionConfigFile >> "Amity" >> "Setup" >> "timeLock")) exitWith {};
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _amount = parseNumber(ctrlText 1400);
      if(_amount <= 0) exitWith {};
      private _player_cash = player getVariable["cash", -1];
      if(_bank >= _amount) then {
            amity_var_cash_last_action = time;
            ctrlEnable[1600, false];
            ctrlEnable[1601, false];
            ctrlEnable[1602, false];

            [_faction_id, "SUB", _amount] remoteExecCall ["Server_fnc_factionBankTransfer", 2];
            [player, "ADD", _amount] remoteExecCall ["Server_fnc_handleCash", 2];
            ctrlSetText[1000, format["$%1",_player_cash + _amount]];
            ctrlSetText[1001, format["$%1", _bank - _amount]];
            _display setVariable["bank", _bank - _amount];
            [["STR_CORE_ATM_ACTION_WITHDRAW", _amount], true] call Client_fnc_domsg;
            closeDialog 0;
      } else {
            ["STR_CORE_ATM_ACTION_WITHDRAW_NO_MONEY", true] call Client_fnc_domsg;
      };
};
if(_type == "DEPOSIT") exitWith {
      //permision check
      if(!(["faction_atm_payin"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

      if(time - amity_var_cash_last_action < getNumber(missionConfigFile >> "Amity" >> "Setup" >> "timeLock")) exitWith {};
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _amount = parseNumber(ctrlText 1400);
      if(_amount <= 0) exitWith {};
      private _player_cash = player getVariable["cash", -1];
      if ([_amount] call Client_fnc_checkMoney) then {
      amity_var_cash_last_action = time;
            ctrlEnable[1600, false];
            ctrlEnable[1601, false];
            ctrlEnable[1602, false];
            closeDialog 0;
            [_faction_id, "ADD", _amount] remoteExecCall ["Server_fnc_factionBankTransfer", 2];
            [player, "SUB", _amount] remoteExecCall ["Server_fnc_handleCash", 2];
            ctrlSetText[1000, format["$%1",_player_cash - _amount]];
            ctrlSetText[1001, format["$%1", _bank + _amount]];
            _display setVariable["data", _bank + _amount];
            [["STR_CORE_ATM_ACTION_DEPOSIT", _amount], true] call Client_fnc_domsg;
      } else {
            ["STR_CORE_ATM_ACTION_DEPOSIT_NO_MONEY", true] call Client_fnc_domsg;
      };
};
if(_type == "TRANSFER") exitWith {
      //permision check
      if(!(["faction_atm_transfer"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

      if(time - amity_var_cash_last_action < getNumber(missionConfigFile >> "Amity" >> "Setup" >> "timeLock")) exitWith {};
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _account = parseNumber(lbData[2100, _index]);
      if(_account < 0) exitWith {};
      private _amount = parseNumber(ctrlText 1401);
      if(_amount <= 0) exitWith {};
      if(_bank < _amount) exitWith { ["STR_CORE_ATM_ACTION_TRANSFER_NO_MONEY", true] call Client_fnc_domsg; };
      amity_var_cash_last_action = time;

      [_faction_id, "SUB", _amount] remoteExecCall ["Server_fnc_factionBankTransfer", 2];
      [_account, "ADD", _amount] remoteExecCall ["Server_fnc_factionBankTransfer", 2];
      [["STR_CORE_ATM_FACTION_ACTION_TRANSFER_SEND", _amount]] call Client_fnc_domsg;
      ctrlSetText[1001, format["$%1", _bank - _amount]];
      _display setVariable["bank", _bank - _amount];
      closeDialog 0;
};
