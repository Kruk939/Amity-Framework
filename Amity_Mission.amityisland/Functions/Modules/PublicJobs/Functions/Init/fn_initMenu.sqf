private _array = [
      [
            ["PUBLIC_JOBS_START", localize "STR_PUBLIC_JOBS_START", "", { [] call ClientModules_PublicJobs_fnc_public_job_open; }, {((player getVariable["faction_id", -1]) == -1) && ((player getVariable["public_job", ""]) == "")},{},"","screenloc",3],
		["class",["openrp_vendor_jobs", 0, ["ACE_MainActions"]]]
      ],
      [
            ["PUBLIC_JOBS_STOP", localize "STR_PUBLIC_JOBS_STOP", "", { [] call ClientModules_PublicJobs_fnc_stop; }, {(player getVariable["public_job", ""]) != ""},{},"","screenloc",3],
		["class",["openrp_vendor_jobs", 0, ["ACE_MainActions"]]]
      ],
      [
            ["PUBLIC_JOBS_VEHICLE", localize "STR_PUBLIC_JOBS_VEHICLE", "", { [] call ClientModules_PublicJobs_fnc_spawnVehicle; }, {(player getVariable["public_job", ""]) != "" && (isNull public_jobs_var_vehicle || (player distance public_jobs_var_vehicle) > 300)},{},"","screenloc",3],
		["class",["openrp_vendor_jobs", 0, ["ACE_MainActions"]]]
      ],
      [
            ["PUBLIC_JOBS_VEHICLE", localize "STR_PUBLIC_JOBS_PAYCHECK_COLLECT", "", { [] call ClientModules_PublicJobs_fnc_getPaycheck; }, { public_jobs_var_paycheck > 0 },{},"","screenloc",3],
		["class",["openrp_vendor_jobs", 0, ["ACE_MainActions"]]]
      ]
 ];
_array spawn Client_fnc_addAction;
