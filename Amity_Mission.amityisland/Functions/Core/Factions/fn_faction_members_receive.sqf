if(!dialog) exitWith {};

private _members = _this;
if(typeName _members != "ARRAY") exitWith { closeDialog 0; };

disableSerialization;
private _display = findDisplay 1032;
if(isNull _display) exitWith {};
_display setVariable["data", _members];
{
      _x params ["_id", "", "", "", "", "", "", "_access_level", "", "", "_first_name", "_last_name"];
      private _index = lbAdd[1500, format["%1 - %2 %3", _id, _first_name, _last_name]];
      lbSetData[1500, _index, str(_id)];
      lbSetValue[1500, _index, ((10 - _access_level) * 10000) + _id];
} forEach _members;
lbSortByValue 1500;
if((count _members) != 0) then {
      lbSetCurSel [1500, 0];
};
