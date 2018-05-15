params[["_profile_id", -1], ["_player", objNull], ["_function", ""]];
private _ret = [];
if(_profile_id == -1) exitWith { _ret; };
private _days = getNumber(missionConfigFile >> "Ticket" >> "Config" >> "Points" >> "maxDays");
private _query = format["ticket_get_profile:%1:%2", _profile_id, _days];
_ret = [_query, 2] call ExternalS_fnc_ExtDBasync;
if(!isNull _player && _function != "") exitWith {
      [_ret] remoteExec[_function, _player];
};
_ret;
