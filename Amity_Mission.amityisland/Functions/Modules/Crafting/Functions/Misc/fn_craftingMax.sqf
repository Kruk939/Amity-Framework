params[["_needed", []]];
private _min = 9999999;
{
      _x params["", "_class", "", "_amount"];
      private _count = [_class] call Client_fnc_countItems;
      private _temp = floor(_count / _amount);
      if(_min > _temp) then { _min = _temp; };
} forEach _needed;
if(_min < 0) then { _min = 0; };
_min;
