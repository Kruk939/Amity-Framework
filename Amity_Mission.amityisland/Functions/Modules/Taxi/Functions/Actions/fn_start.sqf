private _vehicle = vehicle player;
if(_vehicle == player || !(_vehicle getVariable["taxi_vehicle", false])) exitWith {
      [] call ClientModules_Taxi_fnc_taxi_fare_delete;
};
private _fare_minute = _vehicle getVariable["taxi_fare_minute", getNumber(missionConfigFile >> "Taxi" >> "Config" >> "Fare" >> "minute")];
private _fare_kilometer = _vehicle getVariable["taxi_fare_kilometer", getNumber(missionConfigFile >> "Taxi" >> "Config" >> "Fare" >> "kilometer")];
private _fare_start = _vehicle getVariable["taxi_fare_start", getNumber(missionConfigFile >> "Taxi" >> "Config" >> "Fare" >> "start")];

_vehicle setVariable["taxi_fare_minute", _fare_minute];
_vehicle setVariable["taxi_fare_kilometer", _fare_kilometer];
_vehicle setVariable["taxi_fare_start", _fare_start];

private _sum = _vehicle getVariable["taxi_j_sum", _fare_start];
_vehicle setVariable["taxi_j_sum", _sum];
_vehicle setVariable["taxi_fare_running", true];
