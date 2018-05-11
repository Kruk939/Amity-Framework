params[["_data", []]];
disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 13002;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["data", _data];
{
      _x params["_id", "_profile_id", "", "_first", "_last"];
      private _suffix = "";
      private _val = 20000;
      private _player = [_profile_id] call Client_fnc_getPlayerByProfile;
      if(!isNull _player) then {
            if(_player getVariable["jail_jailed", false]) then {
                  _suffix = localize "STR_JAIL_DIALOG_LOCKERS_SUFFIX_JAILED";
                  _val = 0;
            } else {
                  _val = 10000;
                  _suffix = localize "STR_JAIL_DIALOG_LOCKERS_SUFFIX_ONLINE";
            };
      };
      private _index = lbAdd[1500, format["%1 - %2 %3 %4", _id, _first, _last, _suffix]];
      lbSetData[1500, _index, str(_profile_id)];
      lbSetValue[1500, _index, _val + _id];
} forEach _data;
lbSortByValue 1500;
