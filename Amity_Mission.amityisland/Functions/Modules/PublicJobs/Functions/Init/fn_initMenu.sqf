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
      ],
      [
		["PUBLIC_JOBS_DELIVERY_UNLOAD_PACKAGE","Unload Package", "", {[_target] call ClientModules_PublicJobs_fnc_delivery_unloadPackage; },{(_target getVariable["delivery_vehicle", false]) && (_target isKindOf 'Car' || _target isKindOf 'AIR' || _target isKindOf 'SHIP') && (_target in amity_var_vehicles)  && (player distance _target) <= 10 && !(player getVariable["Ace_captives_isHandcuffed", false]) && !(player getVariable["Ace_captives_isZiptied", false]) && !(player getVariable["Ace_captives_isSurrendering", false])}],
		["class",["AllVehicles", 0, ["ACE_MainActions"],true]]
	]
 ];
_array spawn Client_fnc_addAction;
