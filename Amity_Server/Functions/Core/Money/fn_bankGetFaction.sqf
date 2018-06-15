params[["_faction_id", -1], ["_player", objNull], ["_function", ""]];
if(_faction_id == -1) exitWith {};
private _faction = [_faction_id] call Server_fnc_factionGet;
private _factions = [] call Server_fnc_factionGetAll;
if(!isNull _player && _function != "") exitWith {
      [_faction, _factions] remoteExecCall [_function, _player];
};
[_faction, _factions];
