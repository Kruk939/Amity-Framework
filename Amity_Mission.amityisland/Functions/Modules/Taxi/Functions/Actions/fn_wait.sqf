private _vehicle = vehicle player;
if(_vehicle == player || !(_vehicle getVariable["taxi_vehicle", false])) exitWith {
      [] call ClientModules_Taxi_fnc_taxi_fare_delete;
};
_vehicle setVariable["taxi_wait", true];
if(!(_vehicle getVariable["taxi_fare_running", false])) then {
      [] call ClientModules_Taxi_fnc_start;
} else {
      private _arr = [] call ClientModules_Taxi_fnc_getFareArray;
      if(count _arr != 0) then {
            _arr call ClientModules_Taxi_fnc_taxi_fare_update;
            private _units = [_vehicle] call ClientModules_Taxi_fnc_vehicleCrew;
            if(count _units != 0) then {
                  _arr remoteExec["ClientModules_Taxi_fnc_taxi_fare_update", _units];
            };
      };

};
