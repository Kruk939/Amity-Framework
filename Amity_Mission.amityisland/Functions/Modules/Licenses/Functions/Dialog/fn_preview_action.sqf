params[["_type",""]];
if(!dialog) exitWith {};
disableSerialization;
private _display = findDisplay 666602;
if(isNull _display) exitWith { closeDialog 0; };
private _target = _display getVariable["target", objNull];
private _licenses = _display getVariable["licenses", []];
private _data = _display getVariable["data", []];

if(_type == "LB") exitWith {
      private _index = lbCurSel 1500;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[1500, _index]);
      {
            _x params["_i", "_license_id", "_description", "_faction_id"];
            if(_id == _i) exitWith {
                  private _name = ([_license_id] call ClientModules_Licenses_fnc_get) select 2;
                  private _uid = _target getVariable["profile_uid", ""];
                  if(typeName _faction_id == "OBJECT") then { _faction_id = "n/a"; };
                  _data params["", "_first", "_last"];
                  private _text = format["License ID: %1\nName: %2\nID Number: %3\nGiven by: %4\nName: %5 %6\nDescription:\n%7",_i, _name, _uid, _faction_id, _first, _last, _description];
                  ctrlSetText [1000, _text];
            };
      } forEach _licenses;
};
