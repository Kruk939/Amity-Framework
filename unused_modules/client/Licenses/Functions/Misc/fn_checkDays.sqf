params[["_license_id", -1], ["_days", -1]];
if(_license_id == -1 || _days <= 0) exitWith { 0; };
_days = round(_days);
{
      _x params["_id", "", "", "_min", "_max"];
      if(_license_id == _id) exitWith {
            if(_min > _days) then { _days = _min; };
            if(_max < _days) then { _days = _max; };
      };
} forEach licenses_var_all;
_days;
