params[["_target", objNull], ["_relPos", [0,0,0]], ["_time", 100], ["_onFinish", {}]];
if(isNull _target) exitWith { false; };
private _config = (missionConfigFile >> "Robbery" >> "Config" >> "Drill");
private _item = getText(_config >> "item");
if(_item != "" && ([_item] call Client_fnc_countItems) == 0) exitWith { false; };
if(_target getVariable["robbery_has_drill", false]) exitWith { false; };
private _cooltime = getNumber(missionConfigFile >> "Robbery" >> "ATM" >> "cooldown");
private _lastRobbery = _target getVariable["robbery_last", time - _cooltime - 1];
if(_lastRobbery + _cooltime > time && _cooltime > 0) exitWith {
      ["STR_ROBBERY_ROB_ATM_LAST_ROBBED", true] call Client_fnc_doMsg;
      false;
};

private _drill = (getText(_config >> "drillClass")) createVehicle (getArray(_config >> "spawn"));
_drill attachTo [_target, _relPos];

_drill setVariable["robbery_drill_target", _target, true];
_drill setVariable["robbery_drill_time", _time, true];
_drill setVariable["robbery_drill_onFinish", _onFinish, true];
_drill setVariable["robbery_drill", true, true];
_drill setVariable["robbery_drill_working", false, true];
_drill setVariable["robbery_drill_jammed", false, true];
_target setVariable["robbery_has_drill", true, true];
[_drill] remoteExec ["ClientModules_Robbery_fnc_drillAddActions", -2];
["STR_ROBBERY_DRILL_PLACED", true] call Client_fnc_doMsg;
true;
