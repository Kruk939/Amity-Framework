params[['_id', 0]];
private _ret = objNull;
if(_id == '') exitWith { _ret; };
{
      if(isPlayer _x) then {
            if((_x getVariable['core_user_id', 0]) == _id) exitWith {
                  _ret = _x;
            };
      };
} forEach playableUnits;
_ret;
