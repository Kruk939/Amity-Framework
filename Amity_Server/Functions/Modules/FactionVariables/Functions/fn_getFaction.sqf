params[["_faction_id", -1], ["_player", objNull], ["_function", ""]];
if(_faction_id == -1) exitWith {};
private _modules = [format["factionVariables_get_faction:%1", _faction_id], 2] call ExternalS_fnc_ExtDBasync;
if(!isNull _player && _function != "") exitWith {
      [_modules] remoteExecCall [_function, _player];
};
[_modules];
