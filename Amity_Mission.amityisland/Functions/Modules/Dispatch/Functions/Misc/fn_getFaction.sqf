params[["_faction_id", player getVariable["faction_id", -1]]];
private _ret = [];
if(_faction_id == -1) exitWith { _ret; };
{
      if((_x select 1) == _faction_id) then {
            _ret pushBack _x;
      };
} forEach phone_var_faction_numbers;
_ret;
