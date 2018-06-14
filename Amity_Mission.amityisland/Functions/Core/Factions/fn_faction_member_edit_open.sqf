params[["_member", []], ["_faction_id", -1]];
if(_faction_id == -1) then {
      _faction_id = player getVariable ["faction_id", -1];
};
if((count _member) == 0) exitWith {};
//permision check
if(!(["faction_member_view"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

if(dialog) then {
      closeDialog 0;
};

disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "factionMemberEdit");
private _ok = createDialog _dialog;
if(!_ok) exitWith {};
private _display = findDisplay 1033;
if(isNull _display) exitWith {};
_display setVariable["data", _member];
_display setVariable["faction_id", _faction_id];
_member params ["_id", "", "", "", "", "", "", "_access_level", "_salary", "_description", "_first_name", "_last_name"];
ctrlSetText[1001, format["Edit member: %1 %2", _first_name, _last_name]];
if(typeName _salary == "OBJECT") then {
      _salary = 0;
};
private _text = format["ID: %1\nEmployee: %2 %3\nAccess Level: %4\nSalary: $%5\nDesciption: %6", _id, _first_name, _last_name, _access_level, _salary, _description];
ctrlSetText[1400, str(_access_level)];
ctrlSetText[1401, str(_salary)];
ctrlSetText[1402, _description];
ctrlSetText[1000, _text];
ctrlSetText[1002, format["Current: %1", count _description]];
