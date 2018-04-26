params[["_faction_id", -1],["_player", objNull], ["_function", ""]];
if(_faction_id == -1) exitWith { []; };
private _ret = [format["licenses_select_faction:%1", _faction_id], 2] call ExternalS_fnc_ExtDBasync;
if(!isNull _player && _function != "") exitWith {
      [_ret] remoteExec[_function, _player];
};
_ret;
