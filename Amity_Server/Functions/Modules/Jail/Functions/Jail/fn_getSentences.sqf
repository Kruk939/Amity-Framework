params[["_profile_id", -1], ["_all", false], ["_player", objNull], ["_function", ""]];
private _ret = [];
if(_profile_id == -1) exitWith { _ret; };
private _query = "jail_get_sentences_profile";
if(_all) then { _query = "jail_get_sentences_profile_all"; };
private _q = format["%1:%2", _query, _profile_id];
_ret = [_q, 2] call ExternalS_fnc_ExtDBasync;
if(!isNull _player && _function != "") exitWith {
      [_ret] remoteExecCall [_function, _player];
};
_ret;
