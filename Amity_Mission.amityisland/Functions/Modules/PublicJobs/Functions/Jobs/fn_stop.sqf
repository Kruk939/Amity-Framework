private _variable = player getVariable["public_job", ""];
player setVariable["public_job", nil, true];
public_jobs_var_running = false;
if(_variable == "") exitWith { public_jobs_var_running; };
private _config = [_variable] call ClientModules_PublicJobs_fnc_getConfig;
if(isNull _config) exitWith { public_jobs_var_running; };

private _variables = getArray(_config >> "variables");
{
      _x params["_name", "_value", ["_public", 0], ["_type", ""]];
      player setVariable[_name, nil, (_public == 1)];
} forEach _variables;

private _function = getText(_config >> "Functions" >> "end");
if(!isNil _function) then {
      [] call (call (compile _function));
};
if(!isNull public_jobs_var_vehicle) then {
      [public_jobs_var_vehicle] call ClientModules_PublicJobs_fnc_removeVehicle;
};
[] call ClientModules_PublicJobs_fnc_removeMarker;
[["STR_PUBLIC_JOBS_ENDED", localize getText(_config >> "display")], true] call Client_fnc_domsg;
public_jobs_var_running;
