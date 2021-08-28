params ["_unit", "_role", "_vehicle", ""];
if(_unit != player) exitWith {};
if(!(_vehicle getVariable["taxi_vehicle", false])) exitWith {};
if(_role == "driver") then {
      _vehicle setVariable["taxi_driver", player, true];
} else {

};
[] call ClientModules_Taxi_fnc_taxi_fare_create;
