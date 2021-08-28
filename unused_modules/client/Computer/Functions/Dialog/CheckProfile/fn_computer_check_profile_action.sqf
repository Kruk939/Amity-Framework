disableSerialization;
params[["_type", ""]];
if(_type == "") exitWith {};
if(!dialog) exitWith {};
private _display = findDisplay 15001;
if(isNull _display) exitWith { closeDialog 0; };
private _profile = _display getVariable["profile", []];
private _vehicles = _display getVariable["vehicles", []];
private _wanted = _display getVariable["wanted", []];
private _licenses = _display getVariable["licenses", []];
private _sentences = _display getVariable["sentences", []];
private _tickets = _display getVariable["tickets", []];

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
      //permision check
      if(!(["computer_case_view"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

      private _idc = 2101;
      private _index = lbCurSel _idc;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[_idc, _index]);
      private _case = [_wanted, _id] call _fnc_find;
      _case params["_id", "", "", "_wanted_id", "_reason", "_closed_by", "_name", "_officer_name", "_closed_name"];
      private _wanted = getText(([_wanted_id, "id"] call ClientModules_Computer_fnc_getWantedConfig) >> "name") call BIS_fnc_localize;
      if(typeName _closed_name != "OBJECT") then { _closed_name = format["(%1)", _closed_name]; } else { _closed_name = ""; };
      private _status = if(typeName _closed_by == "OBJECT") then { localize "STR_COMPUTER_WANTED_CASE_OPEN"; } else { localize "STR_COMPUTER_WANTED_CASE_CLOSED"; };
      private _text = format[localize "STR_COMPUTER_CHECK_PROFILE_CASE_VIEW", _id, _name, _officer_name, _status, _closed_name, _wanted, _reason];
      ctrlSetText[1010, _text];
};

if(_type == "CB_TICKETS") exitWith {
      private _idc = 2100;
      private _index = lbCurSel _idc;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[_idc, _index]);
      private _ticket = [_tickets, _id] call _fnc_find;
      _ticket params["_id", "", "", "_amount", "_points", "_reason", "_prest", "_first_name", "_last_name", "_o_first_name", "_o_last_name"];
      private _preset_text = if(typeName _prest == "OBJECT") then { localize "STR_TICKET_DIALOG_GIVE_NONE"; } else {
            private _conf = [_prest, "id"] call ClientModules_Ticket_fnc_getPrest;
            if(!isNull _conf) then {
                  getText(_conf >> "name") call BIS_fnc_localize;
            } else {
                  localize "STR_TICKET_DIALOG_GIVE_NONE";
            };
      };
      private _text = format[localize "STR_COMPUTER_CHECK_PROFILE_TICKET_VIEW", _id, _first_name, _last_name, _o_first_name, _o_last_name, _preset_text, _points, _amount, _reason];
      ctrlSetText[1008, _text];
};

if(_type == "CASES_CHECK") exitWith {
      //permision check
      if(!(["computer_case_view"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

      private _idc = 2101;
      private _index = lbCurSel _idc;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[_idc, _index]);
      private _case = [_wanted, _id] call _fnc_find;
      closeDialog 0;
      [_id, _case] call ClientModules_Computer_fnc_computer_view_case_profile_open;

};

if(_type == "CASES_ADD") exitWith {
      //permision check
      if(!(["computer_case_add"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

      [(_display getVariable["profile_id", -1]), _profile] call ClientModules_Computer_fnc_computer_add_profile_open;
};


if(_type == "SENTENCES_CHECK") exitWith {
      private _idc = 1500;
      private _index = lbCurSel _idc;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[_idc, _index]);
      private _ticket = [_wanted, _id] call _fnc_find;

};

if(_type == "VEHICLES_CHECK") exitWith {
      //permision check
      if(!(["computer_case_view"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

      private _idc = 2103;
      private _index = lbCurSel _idc;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[_idc, _index]);
      [_id] call ClientModules_Computer_fnc_computer_check_vehicle_open;
};

if(_type == "VEHICLES_ADD") exitWith {
      //permision check
      if(!(["computer_case_add"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

      private _idc = 2103;
      private _index = lbCurSel _idc;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[_idc, _index]);
      private _vehicle = [_vehicles, _id] call _fnc_find;
      _vehicle params["", "", "", "", "", "", "_plate"];
      [_plate] call ClientModules_Computer_fnc_computer_add_vehicle_open;
};
