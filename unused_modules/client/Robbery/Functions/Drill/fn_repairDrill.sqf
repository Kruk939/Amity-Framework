params[["_drill", objNull]];
if(isNull _drill) exitWith {};
private _working = _drill getVariable["robbery_drill_working", false];
private _jammed = _drill getVariable["robbery_drill_jammed", true];
if(!_working || !(_drill getVariable["robbery_drill", false]) || !_jammed) exitWith {};

private _config = (missionConfigFile >> "Robbery" >> "Config" >> "Drill");
private _item = getText(_config >> "Repair" >> "item");
if(_item != "" && ([_item] call Client_fnc_countItems) == 0) exitWith {};

private _min = getNumber(_config >> "Repair" >> "min");
private _max = getNumber(_config >> "Repair" >> "max");
private _time = round(random(_max - _min) + _min);
private _onFinish = {
      (_this select 0) params[["_drill", objNull]];
      if(isNull _drill) exitWith {};
      _drill setVariable["robbery_drill_jammed", false, true];
      ["STR_ROBBERY_DRILL_REPAIRED", true] call Client_fnc_doMsg;
};
private _onFailure = {

};
[_time, [_drill], _onFinish, _onFailure, localize "STR_ROBBERY_DRILL_REPAIRING"] call Client_fnc_progressBar;
