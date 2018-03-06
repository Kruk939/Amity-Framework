params[["_player", objNull], ["_faction", -1], ["_function", ""]];
if(isNull _player) exitWith {};
private _player_id = player getVariable["profile_id", -1];
if(_player_id == -1) exitWith {};
private _garage = [];
if(_faction == -1) then {
      _faction == "";
      _garage = [format["core_garage_get_profile:%1", _player_id], 2] call ExternalS_fnc_ExtDBasync;
} else {
      _faction == format["%1", _faction];
      _garage = [format["core_garage_get_faction:%1:%2", _player_id, _faction], 2] call ExternalS_fnc_ExtDBasync;
};
if(_function != "") exitWith {
      [_garage] remoteExec [_function, _player];
};
_garage;
