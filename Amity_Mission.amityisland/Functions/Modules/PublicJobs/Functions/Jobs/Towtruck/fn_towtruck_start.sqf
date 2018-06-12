[player] remoteExecCall["ServerModules_TowParking_addWorker", 2];
[] spawn {
      while{public_jobs_var_running} do {
            public_jobs_towtruck_var_enroute = false;
            private _objects = [];
            {
                  if(_x getVariable["amity_remove", false] && isNull(_x getVariable["public_job_towtruck_tower", objNull]) && _x isKindOf "Car") then {
                        _objects pushBack _x;
                  };
            } forEach vehicles;
            if(count _objects != 0) then {
                  private _object = _objects call BIS_fnc_selectRandom;
                  public_jobs_towtruck_var_enroute = true;
                  _object setVariable["public_job_towtruck_tower", player, true];
                  [localize "STR_PUBLIC_JOBS_TOWTRUCK_MAP_MARKER", getPos _object] call ClientModules_PublicJobs_fnc_addMarker;
                  ["STR_PUBLIC_JOBS_TOWTRUCK_NEW_TASK", true] call Client_fnc_domsg;
                  private _action =
                        [
                  		["TOW_PARKING_STORE", localize "STR_PUBLIC_JOBS_IMPUND", "", { [_target] call ClientModules_PublicJobs_fnc_towtruck_store; },{ _target getVariable["amity_remove", false] && (_target IN ([] call ClientModules_TowParking_fnc_getNearest))}],
                  		["class",["AllVehicles", 0, ["ACE_MainActions"],true]]
                  	];
                  [_action] call Client_fnc_addAction;

                  private _time = time;
                  waitUntil{!public_jobs_towtruck_var_enroute || time - _time > 600 || !public_jobs_var_running || isNull _object || !(_object getVariable["amity_remove", false])};
                  [] call ClientModules_PublicJobs_fnc_removeMarker;
                  uiSleep 5;
            };
      };
};
