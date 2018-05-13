params[["_target", objNull], ["_force", false]];
if(isNull _target) exitWith {};
if(!([_target] call ClientModules_Growing_fnc_is_plant)) exitWith {};
if(!([] call ClientModules_Growing_fnc_has_burnEquipment) && !_force) exitWith {};
private _enabled = getNumber(missionConfigFile >> "Growing" >> "Config" >> "Fire" >> "enable");
if(_enabled == 0) exitWith { deleteVehicle _target; };


[_target, _force] spawn {
      params[["_target", objNull], ["_force", false]];
      private _minDelay = getNumber(missionConfigFile >> "Growing" >> "Config" >> "Fire" >> "Time" >> "minDelay");
      private _maxDelay = getNumber(missionConfigFile >> "Growing" >> "Config" >> "Fire" >> "Time" >> "maxDelay");
      private _delay = random(_maxDelay - _minDelay) + _minDelay;
      _target setVariable["onFire", true, true];
      if(!_force) then {
            uiSleep _delay;
      };
      if(isNull _target) exitWith {};
      private _minDuration = getNumber(missionConfigFile >> "Growing" >> "Config" >> "Fire" >> "Time" >> "minDuration");
      private _maxDuration = getNumber(missionConfigFile >> "Growing" >> "Config" >> "Fire" >> "Time" >> "maxDuration");
      private _duration = random(_maxDuration - _minDuration) + _minDuration + time;

      private _fireClass = getText(missionConfigFile >> "Growing" >> "Config" >> "Fire" >> "fireClass");
      private _fire = _fireClass createVehicle (position _target);
      _fire attachTo [_target, [0,0,0]];
      private _chance = getNumber(missionConfigFile >> "Growing" >> "Config" >> "Fire" >> "moveChance");
      private _distance = getNumber(missionConfigFile >> "Growing" >> "Config" >> "Fire" >> "moveMaxDistance");
      private _tick = getNumber(missionConfigFile >> "Growing" >> "Config" >> "Fire" >> "tick");
      while{_duration > time} do {
            uiSleep _tick;
            private _random = random(100);
            if(_random < _chance) then {
                  private _nearest = nearestObjects[_target, [], _distance];
                  if(count (_nearest) != 0) then {
                        {
                              if(([_x] call ClientModules_Growing_fnc_is_plant) && !(_x getVariable["onFire", false])) exitWith {
                                    [_x, true] call ClientModules_Growing_fnc_plant_burn;
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
