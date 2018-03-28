params [["_veh",objNull],["_lock",-1]];
if(_lock == 1) then { _lock = 2; };
if(_lock == -1) then {
      if(locked _veh == 0) then {
            _lock = 2;
      } else {
            _lock = 0;
      };
};
[_veh, _lock] remoteExec["lock", -2];
