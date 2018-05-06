params[["_vehicle", objNull]];
if(isNull _vehicle) then { _vehicle = public_jobs_var_vehicle; };
private _ret = false;
if(isNull _vehicle) exitWith { _ret; };
private _check = true;
private _minDistance = getNumber(missionConfigFile >> "PublicJobs" >> "Config" >> "minDistance");
{
      if(((_x distance _vehicle < _minDistance) || (vehicle _x == _vehicle)) && _x != player) exitWith { _check = false; };
} forEach allPlayers;
if(_check) then { deleteVehicle _vehicle; } else {
      _vehicle setVariable["amity_remove", true, true];
};
_check;
