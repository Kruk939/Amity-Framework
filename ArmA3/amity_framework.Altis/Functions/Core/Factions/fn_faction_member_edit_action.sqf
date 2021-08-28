params[["_type", ""]];

disableSerialization;
private _display = findDisplay 1033;
if(isNull _display) exitWith {};
private _member = _display getVariable["data", []];
if((count _member) == 0) exitWith {
      closeDialog 0;
};

private _fnc_desc = {
      disableSerialization;
      private _txt = ctrlText 1402;
      _txt = (_txt splitString ":") joinString "";
      if(count _txt > 199) then {
            _txt = [_txt, 0, 199] call BIS_fnc_trimString;
      };
      _txt;
};
private _fnc_access = {
      disableSerialization;
      private _access = parseNumber(ctrlText 1400);
      if(_access < 0) then { _access = 0; };
      if(_access > 10) then { _access = 10; };
      _access;
};
private _fnc_salary = {
      disableSerialization;
      private _salary = parseNumber(ctrlText 1401);
      if(_salary < 0) then { _salary = 0; };
      if(_salary > 999999) then { _salary = 999999; };
      _salary;
};
if(_type == "DESC") exitWith {
      private _txt = [] call _fnc_desc;
      ctrlSetText[1402, _txt];
      ctrlSetText[1002, format["Current: %1", count _txt]];
};
if(_type == "SALARY") exitWith {
      ctrlSetText[1401, str([] call _fnc_salary)];
};
if(_type == "ACCESS") exitWith {
      ctrlSetText[1400, str([] call _fnc_access)];
};
if(_type == "EDIT") exitWith {
      private _access = [] call _fnc_access;
      private _salary = [] call _fnc_salary;
      private _desc = [] call _fnc_desc;
      //permision check
      if(!(["faction_member_update"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

      if(_salary == 0) then {
            _salary = ""; //ExtDB3 changes "" to NULL in request
      };
      private _id = _member select 0;
      [_id, _access, _salary, _desc] remoteExecCall ["Server_fnc_memberUpdate", 2];
      [(_display getVariable["faction_id", -1])] call Client_fnc_faction_members_open;
};
if(_type == "REMOVE") exitWith {
      //permision check
      if(!(["faction_member_remove"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

      private _id = _member select 0;
      [_id] remoteExecCall ["Server_fnc_factionRemoveMember", 2];
      [(_display getVariable["faction_id", -1])] call Client_fnc_faction_members_open;
};
if(_type == "EXIT") exitWith {
      [(_display getVariable["faction_id", -1])] call Client_fnc_faction_members_open;
};
