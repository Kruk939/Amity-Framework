params[["_id", -1]];
private _ret = [];
if(_id == -1) exitWith { _ret; };
{
      if(isPlayer _x) then {
            if(_x getVariable["faction_id", -1] == _id) then {
                  _ret pushBack _x;
            };
      };
} forEach playableUnits;
_ret;
