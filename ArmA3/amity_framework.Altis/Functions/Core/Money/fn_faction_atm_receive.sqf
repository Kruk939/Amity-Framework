disableSerialization;
if(count _this == 0) exitWith { closeDialog 0; };
if(!dialog) exitWith {};
private _display = findDisplay 1011;
if(isNull _display) exitWith { closeDialog 0; };
params[["_faction", []], ["_factions", []]];
private _faction_id = _display getVariable["faction_id", -1];
_display setVariable["data", _this];
lbClear 2100;
_display setVariable["data", _this];
{
            _x params ["_id", "", "_short_name", "_full_name", "_type", "", ""];
            if(_id != _faction_id) then {
                  private _index = lbAdd [2100, format["[%1] %2",_short_name, _full_name]];
                  lbSetData[2100, _index, str(_id)];
            };
} forEach _factions;
if(lbSize 2100 != 0) then {
      lbSetCurSel[2100, 0];
};

private _handcash = player getVariable ["cash", 0];
ctrlSetText[1000, format["$%1", _handcash]];
_faction params ["", "", "", "", "", "_bank", ""];
ctrlSetText[1001, format["$%1", _bank]];
_display setVariable["bank", _bank];
