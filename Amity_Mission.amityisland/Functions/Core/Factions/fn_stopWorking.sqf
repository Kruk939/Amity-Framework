params[["_change", false]];
if(count amity_var_faction == 0 || (player getVariable["faction_id", -1]) == -1) exitWith {};
[player getVariable["faction_id", -1], "FACTION", player, player] remoteExecCall ["Server_fnc_variableUnSet", 2];
player setVariable["faction_id", nil, true];
player setVariable["faction_member_id", nil, true];
player setVariable["faction_access_level", nil];
player setVariable["faction_salary", nil];
player setVariable["faction_name", nil];

if(!_change) then {
      ["onFactionWorkingStop", [amity_var_faction]] call Client_fnc_eventCall;
};
amity_var_faction = [];
