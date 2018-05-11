params[["_jail_id", -1], ["_player", objNull], ["_function", ""]];
private _ret = [];
if(_jail_id == -1) exitWith { _ret; };
private _q = format["jail_get_sentences_all:%1", _jail_id];
_ret = [_q, 2] call ExternalS_fnc_ExtDBasync;
if(!isNull _player && _function != "") exitWith {
      [_ret] remoteExec [_function, _player];
};
_ret;
