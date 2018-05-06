private _array = [
      [
            ["PUBLIC_JOBS_START","Choose Public Job", "", { [] call ClientModules_PublicJobs_fnc_public_job_open; }, {((player getVariable["faction_id", -1]) == -1) && ((player getVariable["public_job", ""]) == "")},{},"","screenloc",3],
		["class",["openrp_vendor_jobs", 0, ["ACE_MainActions"]]]
      ],
      [
            ["PUBLIC_JOBS_STOP","Stop Public Job", "", { [] call ClientModules_PublicJobs_fnc_stop; }, {(player getVariable["public_job", ""]) != ""},{},"","screenloc",3],
		["class",["openrp_vendor_jobs", 0, ["ACE_MainActions"]]]
      ],
      [
            ["PUBLIC_JOBS_VEHICLE","Take Vehicle", "", { [] call ClientModules_PublicJobs_fnc_spawnVehicle; }, {(player getVariable["public_job", ""]) != ""},{},"","screenloc",3],
		["class",["openrp_vendor_jobs", 0, ["ACE_MainActions"]]]
      ],
      [
            ["PUBLIC_JOBS_VEHICLE","Collect paycheck", "", { [] call ClientModules_PublicJobs_fnc_getPaycheck; }, { public_jobs_var_paycheck > 0 },{},"","screenloc",3],
		["class",["openrp_vendor_jobs", 0, ["ACE_MainActions"]]]
      ]
 ];
_array spawn Client_fnc_addAction;
