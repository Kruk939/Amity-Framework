[] call Client_fnc_miscVariables;

params[["_data", []], ["_first", false]];
_data params["_profile_id", "_user_id", "_profile_uid", "_name", "_cash", "_items", "_clothes", "_weapons", "_hunger", "_thirst", "_position"];

player setVariable ["cash", _cash];
player setVariable ["profile_id", _profile_id, true];
player setVariable ["profile_uid", _profile_uid, true];
player setVariable ["name", _name, true];
player setVariable ["cash", _cash];

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
      //remove basic gear
};

[] call Client_fnc_spawn;
