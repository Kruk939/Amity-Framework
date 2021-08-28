params[["_drill", objNull]];
if(isNull _drill) exitWith {};
private _config = (missionConfigFile >> "Robbery" >> "Config" >> "Drill");
if(typeOf _drill != (getText(_config >> "drillClass"))) exitWith {};

private _min = getNumber(_config >> "Take" >> "min");
private _max = getNumber(_config >> "Take" >> "max");
private _time = round(random(_max - _min) + _min);

private _onFinish = {
      (_this select 0) params[["_drill", objNull]];
      if(isNull _drill) exitWith {};
      private _config = (missionConfigFile >> "Robbery" >> "Config" >> "Drill");
      private _item = getText(_config >> "item");
      if(_item != "") then {
            player addItem _item;
      };
      private _target = _drill getVariable["robbery_drill_target", objNull];
      deleteVehicle _drill;
      if(!isNull _target) then {
            _target setVariable["robbery_has_drill", nil, true];
      };
};
private _onFailure = {

};
[_time, [_drill], _onFinish, _onFailure, localize "STR_ROBBERY_DRILL_TAKING"] call Client_fnc_progressBar;
