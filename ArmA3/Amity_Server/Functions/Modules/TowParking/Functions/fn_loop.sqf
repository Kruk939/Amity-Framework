[] spawn {
      while{true} do {
            [] call ServerModules_TowParking_fnc_cleanWorkers;
            private _vehicles = [] call ClientModules_TowParking_fnc_getNearest;
            if((count _vehicles) != 0) then {
                  {
                        if((count([_x, true] call Client_fnc_vehicleCrew)) == 0 && isNull attachedTo _x) then {
                              [_x] call Server_fnc_storeVehicle;
                        };
                  } forEach _vehicles;
            };
            if((count TowParking_var_workers) == 0) then {
                  //no one is working, lets clean it up
            };
            uiSleep 3;
      };
};
