private _toRemove = [];
{
      if(isNull _x) then {
            _toRemove pushBack _forEachIndex;
      };
} forEach TowParking_var_workers;
private _count = count _toRemove;
private _i = _count - 1;
for [{}, {_i >= 0}, {_i = _i - 1}] do {
    TowParking_var_workers deleteAt (_toRemove select _i);
};
