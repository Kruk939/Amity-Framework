params[["_player", objNull], ["_state", false]];
if(isNull _player) exitWith {};
private _profile_id = _player getVariable["profile_id", -1];
if(_profile_id == -1) exitWith {};
private _dead = if(_state) then { 1; } else { 0; };
private _query = format["medical_update_dead_profile:%1:%2", _dead, _profile_id];
 [0, _query] call ExternalS_fnc_ExtDBquery;
