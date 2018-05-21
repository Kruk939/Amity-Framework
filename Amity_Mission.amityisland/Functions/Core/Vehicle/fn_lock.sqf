params [["_veh",objNull],["_lock",-1], ["_monit", true]];
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
_veh lock _lock;
[_veh, _lock, false] remoteExec["lock", 0 - clientOwner];
