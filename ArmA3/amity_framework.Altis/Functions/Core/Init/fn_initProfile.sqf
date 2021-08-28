params[["_data", []], ["_first", false]];
private _time = time;
_data params["_profile_id", "", "_profile_uid", "_first_name", "_last_name", "_female", "_cash", "_items", "_clothes", "_weapons", "_hunger", "_thirst", "_position"];

player setVariable ["cash", _cash, true];
player setVariable ["profile_id", _profile_id, true];
player setVariable ["profile_uid", _profile_uid, true];
player setVariable ["hunger", _hunger];
player setVariable ["thirst", _thirst];
player setVariable ["name", format["%1 %2", _first_name, _last_name], true];
player setVariable ["female", _female, true];
player setVariable ["first_name", _first_name, true];
player setVariable ["last_name", _last_name, true];


if((count _items) == 0 && (count _weapons) == 0 && (count _clothes) == 0) then {
      _first = true;
};

if(!amity_var_inited) then {
      [] call Client_fnc_miscVariables;
      [] spawn Client_fnc_loop;
      [] call Client_fnc_initEventHandlers;
      [] call Client_fnc_initListeners;
      [] call Client_fnc_initModules;
      amity_var_inited = true;
} else {
      ["onPlayerProfileChange", [player, _data]] call Client_fnc_eventCall;
};
if(!_first) then {
      [[_items, _clothes, _weapons]] call Client_fnc_loadItems;
} else {
      ["onPlayerFirstConnect", [player, _data]] call Client_fnc_eventCall;
};
[player] remoteExecCall ["Server_fnc_setConnection", 2];

[_profile_id, "PROFILE", player, player] remoteExecCall ["Server_fnc_variableSet", 2];

diag_log format["----------- Loaded, elapsed: %1", [time - _time,"MM:SS.MS"] call BIS_fnc_secondsToString];
[] call Client_fnc_spawn;
