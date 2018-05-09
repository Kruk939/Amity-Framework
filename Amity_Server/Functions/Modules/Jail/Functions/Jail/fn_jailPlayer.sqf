params[["_target", objNull], ["_jail_id", -1], ["_officer_id", -1], ["_sentence", -1], ["_security", -1], ["_reason", ""]];
if(isNull _target || _jail_id == -1 || _sentence <= 0 || _security == -1) exitWith {};


private _profile_id = _target getVariable["profile_id", -1];
if(_profile_id == -1) exitWith {};
if(_officer_id == -1) then { _officer_id = ""; };

[0, format["jail_insert_sentence:%1:%2:%3:%4:%5:%6", _jail_id, _profile_id, _officer_id, _sentence, _security, _reason]] call ExternalS_fnc_ExtDBquery;
[_profile_id, 1] call ServerModules_Jail_fnc_updateStatus;

private _query = format["jail_get_sentences_profile:%1", _profile_id];
private _ret = [_query, 2] call ExternalS_fnc_ExtDBasync;
[_ret] remoteExec["ClientModules_Jail_fnc_jailLoop", _target];
