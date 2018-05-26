public_jobs_delivery_var_package = nil;
public_jobs_delivery_var_packages_count = nil;
{
      if(!isNull _x) then { deleteVehicle _x; };
} forEach public_jobs_delivery_var_packages;
public_jobs_delivery_var_packages = nil;
