params[["_player", objNull], ["_function", ""]];
private _factions = ["core_faction_get_all", 2] call ExternalS_fnc_ExtDBasync;
if(!isNull _player && _function != "") exitWith {
      [_factions] remoteExecCall [_function, _player];
};
_factions;
