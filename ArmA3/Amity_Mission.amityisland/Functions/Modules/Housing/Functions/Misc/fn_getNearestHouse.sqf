params[["_distance", 50]];

private _types = [];
{
      _types pushBack (_x select 1);
} forEach housing_var_types;

private _houses = nearestObjects [[0,0,0], _types, _distance];
private _ret = objNull;
if(count _houses != 0) then { _ret = _houses select 0; };
_ret;
