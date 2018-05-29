params[["_target", objNull]];
if(isNull _target) exitWith {};
private _config = (missionConfigFile >> "Robbery" >> "ATM");
if(typeOf _target != getText(_config >> "atmClass")) exitWith {};

private _min = getNumber(_config >> "Drill" >> "Time" >> "min");
private _max = getNumber(_config >> "Drill" >> "Time" >> "max");
private _time = round(random(_max - _min) + _min);
private _pos = getArray(_config >> "Drill" >> "position");


private _onFinish = {
      params["_drill", "_target"];
      if(isNull _drill) exitWith {};
      private _cooltime = getNumber(missionConfigFile >> "Robbery" >> "ATM" >> "cooldown");
      private _lastRobbery = _target getVariable["robbery_last", time - _cooltime - 1];
      if(_lastRobbery + _cooltime > time && _cooltime > 0) exitWith {
            ["STR_ROBBERY_ROB_ATM_LAST_ROBBED", true] call Client_fnc_doMsg;
      };
      private _config = (missionConfigFile >> "Robbery" >> "ATM");
      private _min = getNumber(_config >> "Reward" >> "min");
      private _max = getNumber(_config >> "Reward" >> "max");
      private _reward = round(random(_max - _min) + _min);
      private _cases = (getNumber(_config >> "Reward" >> "cases")) != 0;
      [_reward, _cases] call ClientModules_Robbery_fnc_giveReward;
      _target setVariable["robbery_last", time, true];
};
[_target, _pos, _time, _onFinish] call ClientModules_Robbery_fnc_placeDrill;

if((getNumber(_config >> "Notify" >> "enabled")) != 0) then {
      [_target, _config] spawn {
            params["_target", "_config"];
            uiSleep (getNumber(_config >> "Notify" >> "after"));
            [getPos _target, "atm"] call ClientModules_Robbery_fnc_notify;
      };
};
