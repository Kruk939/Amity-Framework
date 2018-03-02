[] call Client_fnc_miscVariables;

params[["_data", []], ["_first", false]];
_data params["_profile_id", "_user_id", "_profile_uid", "_first_name", "_last_name", "_female", "_cash", "_items", "_clothes", "_weapons", "_hunger", "_thirst", "_position"];

player setVariable ["cash", _cash];
player setVariable ["profile_id", _profile_id, true];
player setVariable ["profile_uid", _profile_uid, true];
player setVariable ["name", format["%1 %2", _first_name, _last_name], true];
player setVariable ["female", _female, true];
player setVariable ["first_name", _first_name];
player setVariable ["last_name", _last_name];

if(!amity_var_inited) then {
      [] spawn Client_fnc_loop;
      [] call Client_fnc_initModules;
      [] call Client_fnc_initEventHandlers;
      amity_var_inited = true;
} else {
      ["onPlayerProfileChange", [player, _profile_id, _user_id]] call Client_fnc_eventCall;
};
if(!_first) then {
      //load items
} else {
      ["onPlayerFirstConnect", [player, _profile_id, _user_id]] call Client_fnc_eventCall;
};
[player] remoteExec ["Server_fnc_resetConnection", 2];
[] call Client_fnc_spawn;
