params[["_faction_id", -1], ["_player", objNull], ["_function", ""]];
if(_faction_id == -1) exitWith {};

private _faction = [_faction_id] call Server_fnc_factionGet;


if(!isNull _player && _function != "") exitWith {
      [_faction] remoteExec[_function, _player];
};
[_faction];
