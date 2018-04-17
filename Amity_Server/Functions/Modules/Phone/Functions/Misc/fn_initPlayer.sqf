params[["_player", objNull], ["_function", ""]];
if(isNull _player || _function == "") exitWith {};

private _profile_id = _player getVariable["profile_id", -1];
if(_profile_id == -1) exitWith {};
private _exists = [format["phone_exist_data:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync;
_exists = (_exists select 0) select 0;
if(_exists) then {
      private _data = ([format["phone_get_data_profile:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync) select 0;
      private _contacts = [format["phone_get_contacts:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync;
      private _numbers = [format["phone_get_numbers_profile:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync;
      {
            _x params["", "", "_number"];
            private _messages = [format["phone_get_messages:%1", _number], 2] call ExternalS_fnc_ExtDBasync;
            _x pushBack _messages;
      } forEach _numbers;
      [_data, _numbers, _contacts] remoteExec [_function, _player];
} else {
      [0, format["phone_insert_data:%1",_profile_id]] call ExternalS_fnc_ExtDBquery;
      uiSleep 2;
      [_player, _function] call ServerModules_Phone_fnc_initPlayer;
};
