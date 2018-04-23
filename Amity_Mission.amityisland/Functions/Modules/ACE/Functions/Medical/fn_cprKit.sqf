params[["_target",objNull]];
if(isNull _target) exitWith {};

private _item = getText(missionConfigFile >> "Medical" >> "CPR" >> "item");
//check if he has item
if(([_item] call Client_fnc_countItems) == 0) exitWith {
      ["You don't have aid kit"] spawn Client_fnc_domsg;
}; //you don't have item

if(_target getVariable["medical_revive_active", false]) exitWith {
      ["Target is already CPRed"] spawn Client_fnc_domsg;
};

_target setVariable["medical_revive_active", true, true];
private _minTime = getNumber(missionConfigFile >> "Medical" >> "CPR" >> "minTime");
private _maxTime = getNumber(missionConfigFile >> "Medical" >> "CPR" >> "maxTime");
private _time = (random(_maxTime - _minTime) + _minTime);
[player, getText(missionConfigFile >> "Medical" >> "CPR" >> "animation"), 1] spawn ace_common_fnc_doAnimation;

private _onFinish = {
      (_this select 0) params ["_target"];
      private _startChance = getNumber(missionConfigFile >> "Medical" >> "CPR" >> "startChance");
      private _random = random(100);
      private _chance = _target getVariable["medical_cpr_chance", _startChance];
      if(_random < _chance) then {
            [_target] call ClientModules_ACE_fnc_revive;
            _target setVariable["medical_cpr_chance", nil, true];
            private _reviveStartTime = _target getVariable ["ace_medical_reviveStartTime",0];
            private _addTime = getNumber(missionConfigFile >> "Medical" >> "CPR" >> "addChance");
            _target setVariable ["ace_medical_reviveStartTime", (_reviveStartTime + random(_addTime)) min CBA_missionTime];
      } else {
            private _addChance = getNumber(missionConfigFile >> "Medical" >> "CPR" >> "addChance");
            _target setVariable["medical_cpr_chance", _chance + _addChance, true];
      };
            _target setVariable["medical_revive_active", nil, true];
      [player, "AmovPknlMstpSrasWrflDnon", 1] call ace_common_fnc_doAnimation;
};
private _onFailure = {
      (_this select 0) params ["_target"];
      _target setVariable["medical_revive_active", nil, true];
      [player, "AmovPknlMstpSrasWrflDnon", 1] call ace_common_fnc_doAnimation;
};
private _onEachFrame = {
      (_this select 0) params ["_target"];
      private _return = _target getVariable["ACE_isUnconscious", false];
      _return;
};
[_time, [_target],_onFinish,_onFailure,"Pumping this mothirfuckir", _onEachFrame] call Client_fnc_progressBar;
