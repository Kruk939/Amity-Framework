params [["_veh",objNull],["_lock",-1], ["_monit", true]];
if(isNull _veh) exitWith {};
if(_lock == 1) then { _lock = 2; };
if(_lock == -1) then {
      if(locked _veh == 0) then {
            _lock = 2;
      } else {
            _lock = 0;
      };
};

if(_monit) then {
      if(_lock == 0) then {
            ["You have unlocked the car", true] call Client_fnc_domsg;
      } else {
            ["You have locked the car", true] call Client_fnc_domsg;
      };
};
private _config = missionConfigFile >> "Amity" >> "Custamization" >> "Sounds" >> "Vehicle";
if(getText(_config >> "open") != "" && _lock == 0) then {
      playSound3D [getText(_config >> "open"), _veh, false, getPosASL _veh, 5, 1, 25];
};
if(getText(_config >> "close") != "" && _lock != 0) then {
      playSound3D [getText(_config >> "close"), _veh, false, getPosASL _veh, 5, 1, 25];
};
[_veh, _lock] remoteExecCall["lock", _veh];
