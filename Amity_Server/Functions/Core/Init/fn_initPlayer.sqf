params[["_player", objNull]];
if(isNull _player) exitWith {};
waitUntil {!(isNil{extDB_SQL_CUSTOM_ID})};
waitUntil {Amity_Server_Inited};

private _uid = getPlayerUID _player;
//check if player exists
private _exists = (([format["exists_player:%1", _uid], 2] call ExternalS_fnc_ExtDBasync) select 0) select 0;
if(_exists) then {
      private _id = (([format["core_get_user:%1", _uid], 2] call ExternalS_fnc_ExtDBasync) select 0) select 0;
      _player setVariable ["core_user_id", _id, true];
      [_id, "USER", _player, _player] call Server_fnc_variableSet;
      //check if player has at least one profile
      private _profiles = [format["core_get_profiles:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
      if(count _profiles > 0) then {
            if((count _profiles) == 1) then {
                  //[_profiles select 0] remoteExecCall["Client_fnc_initProfile", _player];
                  [_profiles] remoteExecCall ["Client_fnc_chooseProfile", _player];
            } else {
                  [_profiles] remoteExecCall ["Client_fnc_chooseProfile", _player];
            };
      } else {
            [] remoteExecCall["Client_fnc_createProfile", _player];
      };
} else {
      [0, format["core_insert_user:%1", _uid]] call ExternalS_fnc_ExtDBquery;
      uiSleep 2;
      [_player] spawn Server_fnc_initPlayer;
};
