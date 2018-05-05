params ["_unit", "_role", "_vehicle", ""];
if(_unit != player) exitWith {};
[] call ClientModules_Taxi_fnc_taxi_fare_delete;
if(!(_vehicle getVariable["taxi_vehicle", false])) exitWith {};
if(_role == "driver") then {

} else {

};
