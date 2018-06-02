disableSerialization;
if(count _this == 0) exitWith { closeDialog 0; };
if(!dialog) exitWith {};
private _display = findDisplay 1010;
if(isNull _display) exitWith { closeDialog 0; };
lbClear 2100;
_display setVariable["data", _this];
{
      _x params["_id", "_account_number","_profile_id","_cash"];
            private _index = lbAdd [2100, format["%1",_account_number]];
            lbSetData[2100, _index, str(_id)];
} forEach _this;
private _handcash = player getVariable ["cash", 0];
ctrlSetText[1000, format["$%1", _handcash]];
lbSetCurSel[2100, 0];
