disableSerialization;
private _layer = getNumber(missionConfigFile >> "Taxi" >> "Config" >> "layer");
_layer cutRSC ["taxi_fare", "PLAIN", -1];
if(((vehicle player) getVariable["taxi_j_sum", 0]) == 0) then {
      [] call ClientModules_Taxi_fnc_reset;
} else {
      private _arr = [] call ClientModules_Taxi_fnc_getFareArray;
      if(count _arr != 0) then {
            _arr call ClientModules_Taxi_fnc_taxi_fare_update;
      };
      if(((vehicle player) getVariable["taxi_fare_running", false])) then {
            [] call ClientModules_Taxi_fnc_stop;
      };
};
