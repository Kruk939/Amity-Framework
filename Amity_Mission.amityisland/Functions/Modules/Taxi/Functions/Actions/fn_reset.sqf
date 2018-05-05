private _vehicle = vehicle player;
_vehicle setVariable["taxi_fare_running", nil];
_vehicle setVariable["taxi_wait", nil];
_vehicle setVariable["taxi_j_k_sum", nil];
_vehicle setVariable["taxi_j_m_sum", nil];
_vehicle setVariable["taxi_j_k_count", nil];
_vehicle setVariable["taxi_j_m_count", nil];
_vehicle setVariable["taxi_j_sum", nil];
if(_vehicle == player || !(_vehicle getVariable["taxi_vehicle", false])) exitWith {
      [] call ClientModules_Taxi_fnc_taxi_fare_delete;
};
