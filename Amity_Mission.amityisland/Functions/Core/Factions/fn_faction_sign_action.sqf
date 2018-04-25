disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1031;
if(isNull _display) exitWith {};
params[["_type", ""]];

private _faction = [];
private _factions = _display getVariable["factions", []];
private _index = lbCurSel 1500;
if(_index != -1) then {
      private _faction_id = parseNumber(lbData[1500, _index]);
      {
            if(_faction_id == (_x select 0)) exitWith {
                  _faction = _x;
            };
      } forEach _factions;
};
if(_type == "LB") exitWith {
      if((count _faction) != 0) then {
            _faction params["_id", "", "", "_faction_short_name", "_faction_full_name", "_faction_type", "", "_access_level", "_salary", "", "", ""];
            private _text = format["ID: %1\nShort name: %2\nFull name: %3\nType: %4\nSalary: $%5\nAccess Level: %6", _id, _faction_short_name, _faction_full_name, _faction_type, _salary, _access_level];
            ctrlSetText[1000, _text];
      };
};
if(_type == "SIGN") exitWith {
      [_faction] call Client_fnc_startWorking;
      closeDialog 0;
};
if(_type == "EXIT") exitWith {
      closeDialog 0;
};
