params[["_type", ""]];
if(!dialog) exitWith {};
private _display = findDisplay 666604;
if(isNull _display) exitWith { closeDialog 0; };
if(_type == "AMOUNT") exitWith {
      private _amount = parseNumber(ctrlText 1400);
      if(_amount < 0) then { _amount = 0; };
      private _max = player getVariable["cash", 0];
      if(_amount > _max) then { _amount = _max; };
      ctrlSetText[1400, str(_amount)];
};
if(_type == "GIVE") exitWith {
      private _target = _display getVariable["target", objNull];
      if(isNull _target) exitWith {};
      private _amount = parseNumber(ctrlText 1400);
      if(_amount <= 0) exitWith {};
      if(!([_amount] call Client_fnc_checkMoney)) exitWith {};
      [_amount] call Client_fnc_removeCash;
      [_amount] remoteExec["Client_fnc_addCash", _target];
      [["STR_LICENSES_GIVE_CASH_GIVEN", _amount, _target getVariable["name", ""]]] call Client_fnc_domsg;
      [["STR_LICENSES_GIVE_CASH_RECEIVED", _amount, player getVariable["name", ""]]] remoteExec["Client_fnc_domsg", _target];
      closeDialog 0;
};
