params[["_jail_id", -1], ["_player", objNull], ["_function", ""]];
if(_jail_id == -1) exitWith {};
private _query = format["jail_get_locker_all:%1", _jail_id];
private _ret = [_query, 2] call ExternalS_fnc_ExtDBasync;
if(!isNull _player && _function != "") exitWith {
      [_ret] remoteExec[_function, _player];
};
_ret;
