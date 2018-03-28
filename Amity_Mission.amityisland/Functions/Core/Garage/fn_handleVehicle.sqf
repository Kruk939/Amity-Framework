params[["_vehicle", objNull], ["_data", []]];
if(isNull _vehicle) exitWith {};
if((count _data) == 0) exitWith {};
_data params ["_id", "_profile_id", "_faction_id", "_vehicle_id", "_class", "_vin", "_plate", "_status", "_hit", "_damage", "_fuel", "_color", "_material", "_rims", "_windows", "_lights", "_pos", "_inventory", "_access_level"];
[_vehicle] call Client_fnc_attachVehicle;
amity_var_vehicles pushBack _vehicle;
[_id, "GARAGE", _vehicle, player] remoteExec ["Server_fnc_variableSet", 2];
