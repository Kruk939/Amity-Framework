params[["_profile_id", -1], ["_name", ""], ["_number", ""], ["_player", objNull], ["_function", ""]];
if(_profile_id == -1 || _name == "" || _number == "") exitWith {};

private _query = format["phone_insert_contact:%1:%2:%3",_profile_id, _name, _number];
private _ret = ([_query, 2] call ExternalS_fnc_ExtDBasync) select 0;
if(!isNull _player && _function != "") exitWith {
      [_ret] remoteExec[_function, _player];
};
_ret;
