params[["_profile_id", -1], ["_player", objNull], ["_function", ""]];
private _ret = [];
if(_profile_id == -1) exitWith { _ret; };
private _query = format["ticket_get_officer:%1", _profile_id];
_ret = [_query, 2] call ExternalS_fnc_ExtDBasync;
if(!isNull _player && _function != "") exitWith {
      [_ret] remoteExecCall[_function, _player];
};
_ret;
