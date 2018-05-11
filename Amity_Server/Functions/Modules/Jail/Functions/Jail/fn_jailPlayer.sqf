params[["_target", objNull], ["_jail_id", -1], ["_officer_id", -1], ["_sentence", -1], ["_security", -1], ["_reason", ""]];
if(isNull _target || _jail_id == -1 || _sentence <= 0 || _security == -1) exitWith {};


private _profile_id = _target getVariable["profile_id", -1];
if(_profile_id == -1) exitWith {};
if(_officer_id == -1) then { _officer_id = ""; };

private _jail = [_jail_id, "id"] call ClientModules_Jail_fnc_jail_getConfig;
if(isNull _jail) exitWith {};

if(getNumber(_jail >> "persistant") == 1) then {
      [0, format["jail_insert_sentence:%1:%2:%3:%4:%5:%6", _jail_id, _profile_id, _officer_id, _sentence, _security, _reason]] call ExternalS_fnc_ExtDBquery;
      [_profile_id, 1] call ServerModules_Jail_fnc_updateStatus;

      private _ret = [_profile_id] call ServerModules_Jail_fnc_getSentences;
      [_ret] remoteExec["ClientModules_Jail_fnc_jailLoop", _target];
} else {
      [[-1, 1, _sentence, _sentence, _security, _reason]] remoteExec["ClientModules_Jail_fnc_jailLoop", _target];
};
