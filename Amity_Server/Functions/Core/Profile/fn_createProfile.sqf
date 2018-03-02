params[["_player", objNull], ["_data",[]]];
if(isNull _player || (count _data) == 0) exitWith {};
_data params["_first_name", "_last_name", "_female"];
private _exists = (([format["exists_profile:%1:%2", _first_name, _last_name], 2] call ExternalS_fnc_ExtDBasync) select 0) select 0;
if(_exists) then {
      ["EXISTS"] remoteExec ["Client_fnc_createProfile_receive", _player];
} else {
      private _id = _player getVariable["core_user_id", -1];
      private _uid = format["AZ%1", [7, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"] call Client_fnc_generateString];
      if(_id != -1) then {
            [0, format["core_insert_profile:%1:%2:%3:%4:%5", _id, _uid, _first_name, _last_name, _female]] call ExternalS_fnc_ExtDBquery;
      };
      ["OK"] remoteExec ["Client_fnc_createProfile_receive", _player];
};
