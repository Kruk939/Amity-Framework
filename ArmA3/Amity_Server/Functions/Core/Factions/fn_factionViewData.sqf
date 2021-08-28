params[["_faction_id", -1], ["_player", objNull], ["_function", ""]];
if(_faction_id == -1) exitWith {};

private _faction = [_faction_id] call Server_fnc_factionGet;
private _avialable = [];
private _bought = [];
if(!isNil "ServerModules_FactionVariables_fnc_init") then {
      _avialable = amity_factionVariables_var_modules;
      _bought = [_faction_id] call ServerModules_FactionVariables_fnc_getFaction;
};

if(!isNull _player && _function != "") exitWith {
      [_faction, _avialable, _bought] remoteExecCall[_function, _player];
};
[_faction, _avialable, _bought];
