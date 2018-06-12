params[["_player", objNull], ["_function", ""]];
if(isNull _player || _function == "") exitWith {};
private _profile_id = _player getVariable["profile_id", -1];
if(_profile_id == -1) exitWith {};

private _exists = (([format["medical_check:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync) select 0) select 0;
if(_exists) then {
      private _ret = ([format["medicla_get_all_profile:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync) select 0;
      [_ret] remoteExecCall [_function, _player];
} else {
      [0, format["medical_insert_profile:%1", _profile_id]] call ExternalS_fnc_ExtDBquery;
      sleep 2;
      [_player, _function] call ServerModules_ACE_fnc_load;
};
