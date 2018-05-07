params[["_vehicle", objNull]];
if(isNull _vehicle || !(_vehicle getVariable["amity_remove", false])) exitWith {};
private _ret = true;
if(isNil "ClientModules_TowParking_fnc_store") then {
      deleteVehicle _vehicle;
} else {
      _ret = [_vehicle] call ClientModules_TowParking_fnc_store;
};
if(_ret) then {
      [getNumber(missionConfigFile >> "PublicJobs" >> "Jobs" >> "TowTruck" >> "Setup" >> "towFee")] call ClientModules_PublicJobs_fnc_addPaycheck;
      public_jobs_towtruck_var_enroute = false;
};
