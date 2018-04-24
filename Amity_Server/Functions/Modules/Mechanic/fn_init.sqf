private _onVehicleSpawn = {
      params["_vehicle", ""];
      [_vehicle] remoteExec["ClientModules_Mechanic_fnc_addActionsToCar", -2];
};
["onVehicleSpawn", _onVehicleSpawn] call Client_fnc_eventAdd;
