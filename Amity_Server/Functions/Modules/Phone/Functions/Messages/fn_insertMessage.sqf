params[["_message", -1], ["_sender", ""], ["_receiver", ""], ["_player", objNull]];
if(_sender == "" || _receiver == "") exitWith {};
private _ret = [_receiver] call ClientModules_Phone_fnc_getPlayerByNumber;
private _exists = true;
if(isNull _ret) then {
      _exists = false;
      private _number = ([format["phone_get_numbers_number:%1", _receiver], 2] call ExternalS_fnc_ExtDBasync) select 0;
      if(count _number != 0) then {
            _exists = true;
            private _profile_id = _number select 1;
            _ret = [_profile_id] call Client_fnc_getPlayerByProfile;
      };
};

if(_exists) then {
      private _query = format["phone_insert_message:%1:%2:%3", _message, _sender, _receiver];
      private _m = ([_query, 2] call ExternalS_fnc_ExtDBasync) select 0;
      if(!isNull _ret) then {
            ["onMessageReceive", _m] remoteExec ['Client_fnc_eventCall', _ret];
      };
      if(!isNull _player) then {
            ["onMessageSend", _m] remoteExec ['Client_fnc_eventCall', _player];
      };
} else {
      if(!isNull _player) then {
            ["onMessageFail", [-1, _message, _sender, _receiver]] remoteExec ['Client_fnc_eventCall', _player];
      };
};
