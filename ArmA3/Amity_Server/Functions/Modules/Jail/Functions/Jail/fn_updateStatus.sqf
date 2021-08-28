params[["_profile_id", -1], ["_status", -1]];
if(_profile_id == -1 || _status == -1) exitWith {};
[0, format["jail_update_sentence_status:%1:%2", _profile_id, _status]] call ExternalS_fnc_ExtDBquery;
