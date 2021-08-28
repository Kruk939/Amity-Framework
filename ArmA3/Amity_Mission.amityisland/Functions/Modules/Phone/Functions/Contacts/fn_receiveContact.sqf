params[["_data", []]];
private _toRemove = [];
{
      if((_x select 0) == -1) then {
            _toRemove pushBack _forEachIndex;
      };
} forEach phone_var_contacts;
private _i = (count _toRemove) - 1;
for [{}, { _i >= 0; }, { _i = _i - 1; }] do {
    phone_var_contacts deleteAt (_toRemove select _i);
};
phone_var_contacts pushBack _data;
