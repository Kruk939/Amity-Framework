params[["_profile_id", -1], ["_player", objNull], ["_function", ""]];
if(_profile_id == -1) exitWith {};
private _profile = [format["core_get_profile_id:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync;
if(count _profile != 0) then { _profile = _profile select 0; };
if(!isNull _player && _function != "") exitWith {
      [_profile] remoteExecCall[_function, _player];
};
_profile;
