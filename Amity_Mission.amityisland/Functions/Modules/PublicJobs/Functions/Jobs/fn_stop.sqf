private _variable = player getVariable["public_job", ""];
if(_variable == "") exitWith { false; };
private _config = [_variable] call ClientModules_PublicJobs_fnc_getConfig;
if(isNull _config) exitWith { false; };
private _function = getText(_config >> "Functions" >> "end");
if(!isNil _function) then {
      call compile _function;
};
player setVariable["public_job", nil, true];
