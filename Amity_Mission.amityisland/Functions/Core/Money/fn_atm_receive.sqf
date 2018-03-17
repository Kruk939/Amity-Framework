disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1010;
if(isNull _display) exitWith {};
private _atm = _this;
lbClear 2100;
if((count _atm) != 0) then {
      _display setVariable["data", _atm];
      {
            _x params["_id", "_account_number","_priofile_id","_cash"];
                  private _index = lbAdd [2100, format["%1 [%2] - %3$", _id, _account_number, _cash]];
                  lbSetData[2100, _index, str(_id)];
      } forEach _atm;
};
private _handcash = player getVariable ["cash", 0];
ctrlSetText[1003, "$"+str(_handcash)];
