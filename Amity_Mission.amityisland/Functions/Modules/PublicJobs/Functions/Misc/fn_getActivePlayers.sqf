params[["_variable", ""]];
private _ret = [];
if(_variable == "") exitWith { _ret; };
{
      if((_x getVariable["public_job", ""]) == _variable) then {
            _ret pushBack _x;
      };
} forEach playableUnits;
_ret;
