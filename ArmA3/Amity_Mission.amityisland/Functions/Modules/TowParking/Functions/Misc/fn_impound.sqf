params[["_target", objNull]];
private _ret = false;
if(isNull _target) exitWith { _ret; };
if(_target IN amity_var_vehicles) then {
      _target setVariable["amity_remove", true, true];
      ["STR_TOW_PARKING_SET_FOR_IMPOUND", true] call Client_fnc_domsg;
      _ret = true;
} else {
      if((player getVariable ["module_towtruck_set_impound", -1]) != -1) then {
            private _count = 0;
            if(!isNil "ClientModules_PublicJobs_fnc_getActivePlayers") then {
                  _count = count([getText(missionConfigFile >> "PublicJobs" >> "Jobs" >> "TowTruck" >> "variable")] call ClientModules_PublicJobs_fnc_getActivePlayers);
            };
            if(_count != 0) then {
                  _target setVariable["amity_remove", true, true];
                  ["STR_TOW_PARKING_SET_FOR_IMPOUND", true] call Client_fnc_domsg;
            } else {
                  [_target] remoteExecCall ["Server_fnc_storeVehicle", 2];
                  ["STR_TOW_PARKING_IMPOUNDED", true] call Client_fnc_domsg;
            };
            _ret = true;
      } else {
            ["STR_TOW_PARKING_NO_PERMISSION", true] call Client_fnc_domsg;
      };
};
_ret;
