params[["_data", []]];
if(count _data == 0) exitWith {};
private _changed = false;
private _prev = [];
if(count amity_var_faction != 0) then {
      _changed = true;
      _prev = amity_var_faction;
      [_changed] call Client_fnc_stopWorking;
};

_data params["_id", "_faction_id", "_owner_profile_id", "_faction_short_name", "_faction_full_name", "_faction_type", "_profile_id", "_access_level", "_salary", "_member_description", "_member_first_name", "_member_last_name"];

player setVariable["faction_id", _faction_id, true];
player setVariable["faction_member_id", _id, true];
player setVariable["faction_access_level", _access_level];
player setVariable["faction_salary", _salary];

if(_changed) then {
      ["onFactionWorkingChange", [_data, _prev]] call Client_fnc_eventCall;
} else {
      ["onFactionWorkingStart", [_data]] call Client_fnc_eventCall;
};
amity_var_faction = _data;
[["You have started working for [%1] %2", _faction_short_name, _faction_full_name], true] call Client_fnc_domsg;
