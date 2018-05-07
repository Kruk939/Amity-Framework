params[["_vehicle", objNull]];
if(isNull _vehicle) then { _vehicle = public_jobs_var_vehicle; };
private _ret = false;
if(isNull _vehicle) exitWith { _ret; };
private _check = true;
private _minDistance = getNumber(missionConfigFile >> "PublicJobs" >> "Config" >> "minDistance");
{
      if(((_x distance _vehicle < _minDistance) || (vehicle _x == _vehicle)) && _x != player) exitWith { _check = false; };
} forEach allPlayers;
if(!_check) then {
      private _objects = nearestObjects [player, ["openrp_vendor_garage","openrp_vendor_PDgarage","openrp_vendor_EMSgarage","openrp_vendor_carshop"], 15];
      _check = (count _objects) != 0;
};
if(_check) then { deleteVehicle _vehicle; } else {
      _vehicle setVariable["amity_remove", true, true];
};
_check;
