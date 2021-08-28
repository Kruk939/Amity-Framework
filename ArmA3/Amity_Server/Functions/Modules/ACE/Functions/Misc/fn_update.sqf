params[["_player", objNull], ["_damage", 0], ["_state", false], ["_pain", 0], ["_statuses", []]];
private _profile_id = _player getVariable["profile_id", -1];
if(_profile_id == -1) exitWith {};
private _dead = if(_state) then { 1; } else { 0; };
private _statusesString = "";
{ _statusesString = format["%1:%2",_statusesString,_x]; } forEach _statuses;
private _query = format["medical_update_all_profile:%1:%2:%3%4:%5",_damage, _dead, _pain, _statusesString, _profile_id];
[0, _query] call ExternalS_fnc_ExtDBquery;
