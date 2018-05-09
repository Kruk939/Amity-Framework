params[["_target", objNull], ["_force", false]];
if(isNull _target) exitWith {};
if(!([_target] call ClientModules_Drugs_fnc_is_plant)) exitWith {};
if(!([] call ClientModules_Drugs_fnc_has_burnEquipment) && !_force) exitWith {};

[_target, _force] spawn {
      params[["_target", objNull], ["_force", false]];
      private _minDelay = getNumber(missionConfigFile >> "Drugs" >> "Config" >> "Fire" >> "Time" >> "minDelay");
      private _maxDelay = getNumber(missionConfigFile >> "Drugs" >> "Config" >> "Fire" >> "Time" >> "maxDelay");
      private _delay = random(_maxDelay - _minDelay) + _minDelay;
      _target setVariable["onFire", true, true];
      if(!_force) then {
            uiSleep _delay;
      };
      if(isNull _target) exitWith {};
      private _minDuration = getNumber(missionConfigFile >> "Drugs" >> "Config" >> "Fire" >> "Time" >> "minDuration");
      private _maxDuration = getNumber(missionConfigFile >> "Drugs" >> "Config" >> "Fire" >> "Time" >> "maxDuration");
      private _duration = random(_maxDuration - _minDuration) + _minDuration + time;

      private _fireClass = getText(missionConfigFile >> "Drugs" >> "Config" >> "Fire" >> "fireClass");
      private _fire = _fireClass createVehicle (position _target);
      _fire attachTo [_target, [0,0,0]];
      private _chance = getNumber(missionConfigFile >> "Drugs" >> "Config" >> "Fire" >> "moveChance");
      private _distance = getNumber(missionConfigFile >> "Drugs" >> "Config" >> "Fire" >> "moveMaxDistance");

      while{_duration > time} do {
            uiSleep 0.3;
            private _random = random(100);
            if(_random < _chance) then {
                  private _nearest = nearestObjects[_target, [], _distance];
                  if(count (_nearest) != 0) then {
                        {
                              if(([_x] call ClientModules_Drugs_fnc_is_plant) && !(_target getVariable["onFire", false])) exitWith {
                                    [_x, true] call ClientModules_Drugs_fnc_plant_burn;
                              };
                        } forEach _nearest;
                  };
            };
            if(_duration > (time + 5)) then {
                  detach _fire;
                  deleteVehicle _target;
            };
            if(!isNull _target && !(_target getVariable["onFire", false])) exitWith {};
      };
      deleteVehicle _fire;
};
