params[["_object", objNull]];
if(isNull _object || !isPlayer _object) exitWith {};
TowParking_var_workers deleteAt (TowParking_var_workers find _object);
