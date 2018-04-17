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
      if(count _numbers == 0) then {
            _numbers = [_profile_id] call ServerModules_Phone_fnc_insertNumber;
      };
      {
            _x params["", "", "_number"];
            private _messages = [format["phone_get_messages:%1", _number], 2] call ExternalS_fnc_ExtDBasync;
            _x pushBack _messages;
      } forEach _numbers;
      [_data, _numbers, _contacts] remoteExec [_function, _player];
} else {
      private _background = getNumber(missionConfigFile >> "Phone" >> "Default" >> "background");
      private _frame = getNumber(missionConfigFile >> "Phone" >> "Default" >> "frame");
      private _ring = getNumber(missionConfigFile >> "Phone" >> "Default" >> "ringtone");
      [0, format["phone_insert_data:%1:%2:%3:%4",_profile_id, _ring, _frame, _background]] call ExternalS_fnc_ExtDBquery;
      uiSleep 2;
      [_player, _function] call ServerModules_Phone_fnc_initPlayer;
};
