if(public_jobs_delivery_var_package) exitWith {};
private _config = missionConfigFile >> "PublicJobs" >> "Jobs" >> "Delivery";
public_jobs_delivery_var_magazine params ["", "_location", "_distance", "_shops", "", ""];
if(player distance _location > _distance) exitWith {};

private _class = getText(_config >> "Setup" >> "boxClass");
private _holder = _class createVehicle getPos player;
private _shop = _shops call BIS_fnc_selectRandom;

_holder setVariable["locked", true, true];
private _target = [_shop] call ClientModules_PublicJobs_fnc_delivery_getRandomShop;
while{(_target IN public_jobs_delivery_var_delivered_shops)} do {
      _target = [_shop] call ClientModules_PublicJobs_fnc_delivery_getRandomShop;
};
public_jobs_delivery_var_delivered_shops pushBack _target;
if(isNull _target) exitWith { deleteVehicle _holder; };

[localize "STR_PUBLIC_JOBS_DELIVERY_MAP_MARKER_STORE", getPos _target] call ClientModules_PublicJobs_fnc_addMarker;
["STR_PUBLIC_JOBS_DELIVERY_GOT_NEW_PACKAGE", true] call Client_fnc_domsg;

_holder setVariable["target", _target];
_holder setVariable["shop", _shop];
[_holder] call Client_fnc_addAttachable;
[_holder] call Client_fnc_attachObject;
[_holder, _shop, false, [getNumber(_config >> "Setup" >> "Random" >> "min"), getNumber(_config >> "Setup" >> "Random" >> "max")]] remoteExecCall["ServerModules_Shop_fnc_addRandomItemsFromShopToCargo", 2];
public_jobs_delivery_var_packages_count = public_jobs_delivery_var_packages_count + 1;
public_jobs_delivery_var_packages pushBack _holder;


public_jobs_delivery_var_enroute_toMagazine = false;
public_jobs_delivery_var_enroute_toShops = true;

private _condition = compile (format["_target getVariable[""shop"", -1] != -1 && player distance %1 < 10", getPos _target]);
private _actions = [
            [
                  ["PUBLICJOBS_DELIVER",  localize "STR_PUBLIC_JOBS_DELIVERY_PACKAGE_DELIVER", "", {[_target] call ClientModules_PublicJobs_fnc_delivery_deliverPackage}, _condition, {}, "", "", 5],
                  ["object",[_holder, 0, ["ARP_OBJECT_MENU"]]]
            ],
            [
                  ["PUBLICJOBS_DELIVER_LOAD",  localize "STR_PUBLIC_JOBS_DELIVERY_PACKAGE_LOAD", "", {[_target] call ClientModules_PublicJobs_fnc_delivery_loadPackage}, {_target getVariable["shop", -1] != -1 && public_jobs_var_vehicle distance player < 10}, {}, "", "", 5],
                  ["object",[_holder, 0, ["ARP_OBJECT_MENU"]]]
            ]

];
_actions call Client_fnc_addAction;
