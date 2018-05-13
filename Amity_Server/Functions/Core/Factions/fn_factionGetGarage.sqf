params[["_faction_id", -1], ["_player", objNull], ["_function", ""]];
if(_faction_id == -1) exitWith {};
private _garage = [-1, _faction_id] call Server_fnc_getGarage;
private _members = [_faction_id] call Server_fnc_factionGetMembers;
if(!isNull _player || _function == "") exitWith {
      [_garage, _members] remoteExec[_function, _player];
};
[_garage, _members];
