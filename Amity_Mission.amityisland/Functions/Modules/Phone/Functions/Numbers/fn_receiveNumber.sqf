params[["_numbers", []]];
private _newNumber = [];
private _ids = [];
{
      _ids pushBack (_x select 0);
} forEach phone_var_numbers;
{
      if(!((_x select 0) IN _ids)) exitWith {
            _newNumber = _x;
      };
} forEach _numbers;
_newNumber pushBack [];
phone_var_numbers pushBack _newNumber;
