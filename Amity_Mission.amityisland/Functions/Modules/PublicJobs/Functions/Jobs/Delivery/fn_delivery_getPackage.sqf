if(public_jobs_delivery_var_package) exitWith {};
private _config = missionConfigFile >> "PublicJobs" >> "Jobs" >> "Delivery";
private _pos = getArray(_config >> "Setup" >> "Locations" >> "magazines");
private _playerPos = getPos player;
private _near = false;
{
      _x params["_p", "_d"];
      if(_playerPos distance _p < _d) exitWith { _near = true; };
} forEach _pos;
if(!_near) exitWith {};

private _class = getText(_config >> "Setup" >> "boxClass");
private _holder = _class createVehicle getPos player;
private _shops = getArray(_config >> "Setup" >> "shops");
private _shop = _shops call BIS_fnc_selectRandom;

_holder setVariable["locked", true, true];
private _target = [_shop] call ClientModules_PublicJobs_fnc_delivery_getRandomShop;
if(isNull _target) exitWith { deleteVehicle _holder; };
_holder setVariable["target", _target];
_holder setVariable["shop_id", _shop];

[_holder, _shop, false, [getNumber(_config >> "Setup" >> "Random" >> "min"), getNumber(_config >> "Setup" >> "Random" >> "max")]] remoteExec["ServerModules_Shop_fnc_addRandomItemsFromShopToCargo", 2];
public_jobs_delivery_var_packages_count = public_jobs_delivery_var_packages_count + 1;
public_jobs_delivery_var_packages pushBack _holder;
