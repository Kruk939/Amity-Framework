params[["_id", -1], ["_player", objNull], ["_function", ""]];
private _data = [_id] call Server_fnc_getVehicle;
if((count _data) == 0) exitWith {};
_data params ["_id", "_profile_id", "_faction_id", "_class", "_vin", "_plate", "_status", "_hit", "_damage", "_fuel", "_color", "_material", "_rims", "_windows", "_lights", "_access_level"];
private _vehicle = _class createVehicle [492.124,356.297,0.0019784];
_vehicle setVariable ["id", _id, true];
_vehicle setVariable ["vin", _vin];
_vehicle setVariable ["plate", _plate];
_vehicle setVariable ["profile_id", _profile_id];
_vehicle setVariable ["faction_id", _faction_id];


if(!isNull _player && _function != "") then {
      [_vehicle, _data] remoteExec[_function, _player];
};
