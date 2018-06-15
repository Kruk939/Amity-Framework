params[["_furniture", objNull]];
if(isNull _furniture) exitWith {};
private _id = _furniture getVariable["house_furniture_id", -1];
if(_id == -1) exitWith {};
[_furniture] call ServerModules_Housing_fnc_saveFurniture;

private _toDelete = [];
{
      if(isNull _x) then {
            _toDelete pushBack _forEachIndex;
      };
} forEach housing_var_houses_spawned_furnitures;
private _i = count _toDelete;
for [{}, {_i >= 0}, { _i = _i - 1}] do {
    housing_var_houses_spawned_furnitures deleteAt (_toDelete select _i);
};
housing_var_houses_spawned_furnitures deleteAt (housing_var_houses_spawned_furnitures find _furniture);
deleteVehicle _furniture;
