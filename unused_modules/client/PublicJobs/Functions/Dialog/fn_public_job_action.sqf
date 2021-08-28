if(!dialog) exitWith {};
private _display = findDisplay 11000;
if(isNull _display) exitWith {};

params[["_type", ""]];
disableSerialization;

if(_type == "LB") exitWith {
      private _index = lbCurSel 1500;
      if(_index < 0) exitWith {};
      private _variable = lbData[1500, _index];
      private _config = [_variable] call ClientModules_PublicJobs_fnc_getConfig;
      private _display = getText(_config >> "display") call BIS_fnc_localize;
      private _base = getNumber(missionConfigFile >> "PublicJobs" >> "Config" >> "paycheck");
      private _multiplayer = getNumber(missionConfigFile >> "PublicJobs" >> "Config" >> "paycheckMultiplayer");
      private _additional = getNumber(_config >> "paycheck");
      private _paycheck = (_base + _additional) * _multiplayer;
      private _limit = [_variable] call ClientModules_PublicJobs_fnc_getCurrentLimit;
      private _active = count([_variable] call ClientModules_PublicJobs_fnc_getActivePlayers);
      private _vehicle = if(getText(_config >> "Vehicle" >> "vehicleClass") != "") then { localize "STR_YES"; } else { localize "STR_NO"; };
      private _uniform = if(getText(_config >> "uniform") != "") then { localize "STR_YES"; } else { localize "STR_NO"; };
      ctrlEnable[1600, (_active < _limit)];
      private _text = format[localize "STR_PUBLIC_JOBS_DIALOG_INFO_LB", _display, _paycheck, _active, _limit, _vehicle, _uniform];
      ctrlSetText[1000, _text];
};

if(_type == "START") exitWith {
      private _index = lbCurSel 1500;
      if(_index < 0) exitWith {};
      private _variable = lbData[1500, _index];
      private _started = [_variable] call ClientModules_PublicJobs_fnc_start;
      if(_started) then {
            closeDialog 0;
      };
};
