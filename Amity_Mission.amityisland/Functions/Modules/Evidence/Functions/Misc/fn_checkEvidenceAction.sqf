params[["_target", objNull]];
if(isNull _target) exitWith {};
private _config = missionConfigFile >> "Evidence" >> "Config" >> "Time" >> "Progress";
private _min = getNumber(_config >> "min");
private _max = getNumber(_config >> "max");
private _time = round(random(_max - _min) + _min);
private _text = [_target] call ClientModules_Evidence_fnc_checkEvidence;
if(_text == "") exitWith {};
private _onFinish = {
      (_this select 0) params[["_target", objNull], ["_text", ""]];
      if(isNull _target) exitWith {};
      [_text, true] call Client_fnc_doMsg;
      [_target] call ClientModules_Evidence_fnc_clearEvidence;
};
private _onFailure = {

};
[_time, [_target, _text], _onFinish, _onFailure, localize "STR_EVIDENCE_CHECK_PROGRESS"] call Client_fnc_progressBar;
