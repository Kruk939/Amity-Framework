params[["_name", ""], ["_position", []]];
if(_name == "" || (count _position) == 0) exitWith {};
[] call ClientModules_PublicJobs_fnc_removeMarker;
public_jobs_var_marker = format["public_job_%1", getPlayerUID player];
private _marker = createMarkerLocal[public_jobs_var_marker, _position];
_marker setMarkerShapeLocal (getText(missionConfigFile >> "PublicJobs" >> "Config" >> "Marker" >> "shape"));
_marker setMarkerTypeLocal  (getText(missionConfigFile >> "PublicJobs" >> "Config" >> "Marker" >> "type"));
_marker setMarkerColorLocal  (getText(missionConfigFile >> "PublicJobs" >> "Config" >> "Marker" >> "color"));
_marker setMarkerTextLocal _name;
