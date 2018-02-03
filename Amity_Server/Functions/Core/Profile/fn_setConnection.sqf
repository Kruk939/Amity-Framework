params[["_player", objNull]];
if(isNull _player) exitWith {};

private _player_id = _player getVariable ["core_user_id", -1];
if(_player_id == -1) exitWith {};

private _profile_id = _player getVariable ["profile_id", -1];

[format["core_profile_reset_profile:%1", _player_id], 2] call ExternalS_fnc_ExtDBasync;

if(_profile_id != -1) then {
      [format["core_profile_set_connected:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync;
};
