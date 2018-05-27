params[["_shop_id", -1]];
private _ret = objNull;
private _shops = [];
public_jobs_delivery_var_magazine params ["", "", "", "", ["_min", 0], ["_max", 30000]];
if(_shop_id == -1) exitWith { _ret; };
{
      if(_x getVariable["shop_id", -1] == _shop_id) then {
            private _distance = player distance _x;
            if(_min <= _distance && _distance <= _max) then {
                  _shops pushBack _x;
            };
      };
} forEach Shop_var_shop_objects;
if((count _shops) != 0) then {
      _ret = _shops call BIS_fnc_selectRandom;
};
_ret;
