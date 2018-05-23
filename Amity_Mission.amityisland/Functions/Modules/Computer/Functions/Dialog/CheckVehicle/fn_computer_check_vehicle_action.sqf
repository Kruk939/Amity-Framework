disableSerialization;
params[["_type", ""]];
if(_type == "") exitWith {};
if(!dialog) exitWith {};
private _display = findDisplay 15002;
if(isNull _display) exitWith { closeDialog 0; };
private _profile = _display getVariable["profile", []];
private _vehicle = _display getVariable["vehicles", []];
private _cases = _display getVariable["cases", []];
private _faction = _display getVariable["faction", []];
private _fnc_find = {
      params[["_array", []], ["_id", -1]];
      private _ret = [];
      if(_id == -1) exitWith { _ret; };
      {
            if((_x select 0) == _id) exitWith {
                  _ret = _x;
            };
      } forEach _array;
      _ret;
};
if(_type == "CB_CASES") exitWith {
      private _idc = 2100;
      private _index = lbCurSel _idc;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[_idc, _index]);
      private _case = [_cases, _id] call _fnc_find;
      _case params["_id", "", "", "_wanted_id", "_reason", "_closed_by", "", "_plate", "", "", "", "", "_officer_name", "_closed_name"];
      private _wanted = getText(([_wanted_id, "id"] call ClientModules_Computer_fnc_getWantedConfig) >> "name") call BIS_fnc_localize;
      if(typeName _closed_name != "OBJECT") then { _closed_name = format["(%1)", _closed_name]; } else { _closed_name = ""; };
      private _status = if(typeName _closed_by == "OBJECT") then { localize "STR_COMPUTER_WANTED_CASE_OPEN"; } else { localize "STR_COMPUTER_WANTED_CASE_CLOSED"; };
      private _text = format[localize "STR_COMPUTER_CHECK_PROFILE_CASE_VIEW", _id, _plate, _officer_name, _status, _closed_name, _wanted, _reason];
      ctrlSetText[1010, _text];
};
if(_type == "CHECK") exitWith {
      private _idc = 2100;
      private _index = lbCurSel _idc;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[_idc, _index]);
      private _case = [_cases, _id] call _fnc_find;
      [_id, _case] call ClientModules_Computer_fnc_computer_view_case_vehicle_open;
};
if(_type == "ADD") exitWith {
      [_vehicle select 6] call ClientModules_Computer_fnc_computer_add_vehicle_open;
};
