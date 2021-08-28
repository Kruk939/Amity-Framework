params[["_id", -1], ["_house", objNull], ["_distance", 200]];
if(isNull _house) then { _house = player; };
private _pos = getPos _house;
private _nearest = nearestObjects [_pos, [], _distance];
private _ret = objNull;

{
      if((_x getVariable["house_module_id", -1]) == _id) exitWith {
            _ret = _x;
      };
} forEach _nearest;
_ret;
