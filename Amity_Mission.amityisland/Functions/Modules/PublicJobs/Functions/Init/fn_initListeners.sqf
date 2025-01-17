private _onTick = {
      params["", "", ["_tick", 0]];
      private _every = getNumber(missionConfigFile >> "PublicJobs" >> "Config" >> "paycheckEveryTick");
      private _job = player getVariable["public_job", ""];
      if(_tick % _every == 0) then {
            if(_job != "") then {
                  private _config = [_job] call ClientModules_PublicJobs_fnc_getConfig;
                  if(!isNull _config) then {
                        private _base = getNumber(missionConfigFile >> "PublicJobs" >> "Config" >> "paycheck");
                        private _multiplayer = getNumber(missionConfigFile >> "PublicJobs" >> "Config" >> "paycheckMultiplayer");
                        private _additional = getNumber(_config >> "paycheck");
                        private _sum = (_base + _additional) * _multiplayer;
                        private _uniform = getText(_config >> "uniform");
                        if(_uniform != "" && (_uniform != uniform player)) then {
                              _sum = _sum / 2;
                        };
                        [_sum] call ClientModules_PublicJobs_fnc_addPaycheck;
                        private _function = getText(_config >> "Functions" >> "tick");
                        if(!isNil _function) then {
                              [] call (call (compile _function));
                        };
                  };
            };
      };
};
["onTick", _onTick] call Client_fnc_eventAdd;
