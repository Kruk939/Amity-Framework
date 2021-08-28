params[["_radius", -1]];
private _ret = [];
{
      if(isPlayer _x) then {
            private _freq = _x getVariable["phone_current_freq", ""];
            if(_freq != "") then {
                  if(_radius == -1 || (player distance _x) < _radius) then {
                        _ret pushBack _freq;
                  };
            };
      };
} forEach playableUnits;
_ret;
