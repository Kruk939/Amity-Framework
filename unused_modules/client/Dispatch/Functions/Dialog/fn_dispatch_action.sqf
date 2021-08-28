params[["_type", ""]];
if(_type == "") exitWith {};
if(!dialog) exitWith {};
disableSerialization;
private _display = findDisplay 5550001;
if(isNull _display) exitWith { closeDialog 0; };
private _dispatch = _display getVariable["data", []];
if(count _dispatch == 0) exitWith { closeDialog 0; };


if(_type == "CB") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[2100, _index]);
      if(_id == -1) exitWith {};
      private _data = [];
      {
            if((_x select 0) == _id) exitWith {
                  _data = _x;
            };
      } forEach _dispatch;
      if(count _data == 0) exitWith { ctrlSetText[1000, ""]; };
      _data params["_id", "", "_emergency", "_number", "_short", "_full", "_name"];
      ctrlSetText[1000, format[localize "STR_DISPATCH_INFO_TEXT", _short, _full, _number, if(_emergency == 1) then { localize "STR_YES"; } else { localize "STR_NO"; }, if(typeName _name == "OBJECT") then { localize "STR_DISPATCH_NONE"; } else { _name call BIS_fnc_localize; }]];

};
if(_type == "SIGN") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[2100, _index]);
      if(_id == -1) exitWith {};
      [_id] call ClientModules_Dispatch_fnc_start;
      closeDialog 0;
};
