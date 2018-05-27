params[["_variable", ""]];
public_jobs_var_running = false;
private _config = [_variable] call ClientModules_PublicJobs_fnc_getConfig;
if(isNull _config) exitWith { public_jobs_var_running; };
private _limit = [_variable] call ClientModules_PublicJobs_fnc_getCurrentLimit;
private _now = count([_variable] call ClientModules_PublicJobs_fnc_getActivePlayers);
if(_limit <= _now) exitWith { public_jobs_var_running; }; // to many players right now doing job

if(player getVariable["public_job", ""] != "") then {
      [] call ClientModules_PublicJobs_fnc_stop;
};

private _variable = getText(_config >> "variable");
player setVariable["public_job", _variable, true];

private _variables = getArray(_config >> "variables");
{
      _x params["_name", "_value", ["_public", 0], ["_type", ""]];
      player setVariable[_name, if(_type == "BOOL") then { (_value == 1) } else { _value }, (_public == 1)];
} forEach _variables;

public_jobs_var_running = true;
public_jobs_var_start = time;
private _function = getText(_config >> "Functions" >> "start");
diag_log _function;
[["STR_PUBLIC_JOBS_STARTED", localize getText(_config >> "display")], true] call Client_fnc_domsg;
if(!isNil _function) then {
      [] call (call (compile _function));
};
public_jobs_var_running;
