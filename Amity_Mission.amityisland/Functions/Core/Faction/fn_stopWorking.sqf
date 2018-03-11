params[["_change", false]];

player setVariable["faction_id", nil, true];
player setVariable["faction_member_id", nil, true];
player setVariable["faction_access_level", nil];
player setVariable["faction_salary", nil];

if(!_change) then {
      ["onFactionWorkingStart", [amity_var_faction]] call Client_fnc_eventCall;
};
amity_var_faction = [];
