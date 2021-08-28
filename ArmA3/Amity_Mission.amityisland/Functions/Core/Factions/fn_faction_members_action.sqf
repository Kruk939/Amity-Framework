params[["_type", ""]];

disableSerialization;
private _display = findDisplay 1032;
if(isNull _display) exitWith {};
private _data = _display getVariable["data", []];
private _member = [];
private _index = lbCurSel 1500;
if(_index != -1) then {
      private _id = parseNumber(lbData[1500, _index]);
      {
            if((_x select 0) == _id) exitWith {
                  _member = _x;
            };
      } forEach _data;
};
if(_type == "LB") exitWith {
      private _text = "";
      if((count _member) != 0) then {
            _member params ["_id", "", "", "", "", "", "", "_access_level", "_salary", "_description", "_first_name", "_last_name"];
            if(typeName _salary == "OBJECT") then {
                  _salary = 0;
            };
            _text = format["ID: %1\nEmployee: %2 %3\nAccess Level: %4\nSalary: $%5\nDesciption: %6", _id, _first_name, _last_name, _access_level, _salary, _description];
      };
      ctrlSetText[1000, _text];
};
if(_type == "EDIT") exitWith {
      //permision check
      if(!(["faction_member_view"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

      if((count _member) != 0) then {
            closeDialog 0;
            [_member, (_display getVariable["faction_id", -1])] call Client_fnc_faction_member_edit_open;
      };
};
if(_type == "EXIT") exitWith {
      [(_display getVariable["faction_id", -1])] call Client_fnc_faction_view_open;
};
