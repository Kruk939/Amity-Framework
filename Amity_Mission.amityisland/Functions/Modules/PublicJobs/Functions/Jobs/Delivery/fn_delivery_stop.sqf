public_jobs_delivery_var_package = nil;
public_jobs_delivery_var_packages_count = nil;
{
      if(!isNull _x) then { deleteVehicle _x; };
} forEach public_jobs_delivery_var_packages;
public_jobs_delivery_var_enroute_toMagazine = false;
public_jobs_delivery_var_enroute_toShops = false;
public_jobs_delivery_var_packages = nil;
public_jobs_delivery_var_delivered_shops = nil;
public_jobs_delivery_var_magazine = [];
public_jobs_delivery_var_magazine_actions = nil;
