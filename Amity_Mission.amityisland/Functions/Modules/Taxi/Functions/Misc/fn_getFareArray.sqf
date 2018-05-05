private _ret = [];
private _vehicle = vehicle player;
if(_vehicle == player || !(_vehicle getVariable["taxi_vehicle", false]) || (_vehicle getVariable["taxi_driver", objNull]) != player) exitWith {
      [] call ClientModules_Taxi_fnc_taxi_fare_delete;
      _ret;
};
private _driver = player getVariable ["name", ""];
private _fare = [(_vehicle getVariable["taxi_fare_kilometer", 0]), (_vehicle getVariable["taxi_fare_minute", 0])];
private _kilometers = [(_vehicle getVariable["taxi_j_k_count", 0]), (_vehicle getVariable["taxi_j_k_sum", 0])];
private _minutes = [(_vehicle getVariable["taxi_j_m_count", 0]), (_vehicle getVariable["taxi_j_m_sum", 0])];
private _sum = _vehicle getVariable["taxi_j_sum", 0];
if(_vehicle getVariable["taxi_wait", false]) then {
      _fare set[1, (_vehicle getVariable["taxi_fare_minute", 0]) * 2];
      _fare set[0, 0];
};

_ret = [_driver, _fare, _kilometers, _minutes, _sum];
_ret;
