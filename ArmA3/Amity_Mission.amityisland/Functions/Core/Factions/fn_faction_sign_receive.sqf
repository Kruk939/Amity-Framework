private _factions = _this;
disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1031;
_display setVariable["factions", _factions];
if(isNull _display) exitWith {};
{
      _x params["_id", "", "", "_faction_short_name", "_faction_full_name", "", "", "", "", "", "", ""];
      private _index = lbAdd[1500, format["%1 - [%2] %3", _id, _faction_short_name, _faction_full_name]];
      lbSetData [1500, _index, str(_id)];
} forEach _factions;
