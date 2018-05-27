public_jobs_delivery_var_package = false;
public_jobs_delivery_var_packages_count = 0;
public_jobs_delivery_var_packages = [];
public_jobs_delivery_var_enroute_toMagazine = false;
public_jobs_delivery_var_enroute_toShops = false;
public_jobs_delivery_var_magazine = [];
public_jobs_delivery_var_magazine_actions = [];

private _magazines = getArray(missionConfigFile >> "PublicJobs" >> "Jobs" >> "Delivery" >> "Setup" >> "Locations" >> "magazines");

[_magazines] spawn {
      params[["_magazines", []]];
      while{public_jobs_var_running} do {
            public_jobs_delivery_var_enroute_toMagazine = false;
            public_jobs_delivery_var_magazine = _magazines call BIS_fnc_selectRandom;
            if(count public_jobs_delivery_var_magazine != 0) then {
                  public_jobs_delivery_var_enroute_toMagazine = true;
                  public_jobs_delivery_var_magazine params ["_id", "_location", "_distance", "_shops", "_min", "_max"];
                  [localize "STR_PUBLIC_JOBS_TOWTRUCK_MAP_MARKER", _location] call ClientModules_PublicJobs_fnc_addMarker;
                  ["You have new package to deliver. Go to the marker position and get the package!", true] call Client_fnc_domsg;
                  if(!(_id IN public_jobs_delivery_var_magazine_actions)) then {
                        public_jobs_delivery_var_magazine_actions pushBack _id;
                        private _condition = compile(format["public_jobs_delivery_var_enroute_toMagazine && player distance %1 < %2 && (count public_jobs_delivery_var_magazine) != 0 && (public_jobs_delivery_var_magazine select 0) == %3", _location, _distance, _id]);
                        private _action =
                              [
                                    ["TOW_PARKING_STORE", localize "STR_PUBLIC_JOBS_IMPUND", "", { [] call ClientModules_PublicJobs_fnc_delivery_getPackage; },_condition],
                                    ["object", [player, 1, ["ACE_SelfActions"]]]
                              ];
                        [_action] call Client_fnc_addAction;
                  };

                  waitUntil{!public_jobs_delivery_var_enroute_toMagazine};

                  private _time = time;
                  waitUntil{!public_jobs_delivery_var_enroute_toShops || time - _time > 600 || !public_jobs_var_running};
                  [] call ClientModules_PublicJobs_fnc_removeMarker;
                  uiSleep 5;
            };
      };
};
