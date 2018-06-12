params[["_profile_id", -1], ["_player", objNull], ["_function", ""]];
if(_profile_id == -1) exitWith { []; };
private _banks = [format["core_bank_get_profile:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync;
if(_function != "" && !isNull _player) exitWith {
      _banks remoteExecCall [_function, _player];
};
_banks;
