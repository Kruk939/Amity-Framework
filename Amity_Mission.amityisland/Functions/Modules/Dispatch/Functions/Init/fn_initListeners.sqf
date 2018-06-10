private _stop = { [] call ClientModules_Dispatch_fnc_stop; };
["onFactionWorkingChange", _stop] call Client_fnc_eventAdd;
["onFactionWorkingStop", _stop] call Client_fnc_eventAdd;
