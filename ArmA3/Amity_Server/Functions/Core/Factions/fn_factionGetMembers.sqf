params[["_id", -1], ["_player", objNull], ["_function", ""]];
if(_id == -1) exitWith {};
private _members = [format["core_faction_get_members:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
if(!isNull _player && _function != "") exitWith {
      _members remoteExecCall [_function, _player];
};
_members;
