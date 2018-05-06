private _variable = player getVariable["public_job", ""];
player setVariable["public_job", nil, true];
public_jobs_var_running = false;
if(_variable == "") exitWith { public_jobs_var_running; };
private _config = [_variable] call ClientModules_PublicJobs_fnc_getConfig;
if(isNull _config) exitWith { public_jobs_var_running; };
private _function = getText(_config >> "Functions" >> "end");
if(!isNil _function) then {
      call compile _function;
};
if(!isNull public_jobs_var_vehicle) then {
      [public_jobs_var_vehicle] call ClientModules_PublicJobs_fnc_removeVehicle;
};
[] call ClientModules_PublicJobs_fnc_removeMarker;
public_jobs_var_running;
