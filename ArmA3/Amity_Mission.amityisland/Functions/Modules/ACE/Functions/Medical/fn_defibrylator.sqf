params[["_target", objNull]];
if(isNull _target) exitWith {};
if(_target getVariable["medical_revive_active", false]) exitWith {
      ["Target is already CPRed"] spawn Client_fnc_domsg;
}; //being cpred
if(!([player] call ace_medical_fnc_isMedic)) exitWith {
      ["You don't know how to use that"] spawn Client_fnc_domsg;
}; //not medic


private _item = getText(missionConfigFile >> "Medical" >> "Defibrylator" >> "item");
//check if he has item
if(([_item] call Client_fnc_countItems) == 0) exitWith {
      ["You don't have Defibrylator"] spawn Client_fnc_domsg;
}; //you don't have item

private _minTime = getNumber(missionConfigFile >> "Medical" >> "Defibrylator" >> "minTime");
private _maxTime = getNumber(missionConfigFile >> "Medical" >> "Defibrylator" >> "maxTime");
private _time = (random(_maxTime - _minTime) + _minTime);
[player, getText(missionConfigFile >> "Medical" >> "Defibrylator" >> "animation"), 1] spawn ace_common_fnc_doAnimation;

private _onFinish = {
      (_this select 0) params ["_target"];
      private _random = random(100);
      private _chance = getNumber(missionConfigFile >> "Medical" >> "Defibrylator" >> "defaultChance");
      if (_target getVariable ["ace_medical_inCardiacArrest",false]) then {
            _chance = getNumber(missionConfigFile >> "Medical" >> "Defibrylator" >> "cardiacArrestChance");
      };
      playSound3D [getText(missionConfigFile >> "Medical" >> "Defibrylator" >> "sound"),player, false, getPosasl player, 2, 1, 15];
      if(_random < _chance) then {
            _target setVariable ["ace_medical_inCardiacArrest", false,true];
            _target setVariable ["ace_medical_heartRate", 40, true];
            _target setVariable ["ace_medical_bloodPressure", [50,70], true];
            _target setVariable ["ACE_isDead", false, true];
            private _lifesLeft = _target getVariable["ace_medical_amountOfReviveLives", 0];
            private _reviveStartTime = _target getVariable ["ace_medical_reviveStartTime",0];
            _target setVariable["ace_medical_amountOfReviveLives", _lifesLeft + 2];
            _target setVariable ["ace_medical_reviveStartTime", (_reviveStartTime + random(60)) min CBA_missionTime];
            [_target] call ClientModules_ACE_fnc_revive;
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
[_time, [_target],_onFinish,_onFailure,"Reviving this poor fella",  _onEachFrame] call Client_fnc_progressBar;
