params[["_profile_id", -1], ["_faction", -1], ["_player", objNull], ["_function", ""]];
private _garage = [];
if(_faction == -1) then {
      _faction = "";
      _garage = [format["core_garage_get_profile:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync;
} else {
      if(_profile_id == -1) then {
            _garage = [format["core_garage_get_faction_only:%1", _faction], 2] call ExternalS_fnc_ExtDBasync;
      } else {
            _garage = [format["core_garage_get_faction:%1:%2", _profile_id, _faction], 2] call ExternalS_fnc_ExtDBasync;
      };

};
if(_function != "" && !isNull _player) exitWith {
      _garage remoteExecCall [_function, _player];
};
_garage;
