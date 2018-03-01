params[['_uid','']];
private _ret = objNull;
if(_uid == '') exitWith { _ret; };
{
      if(isPlayer _x) then {
            if(getPlayerUID _x == _uid) exitWith {
                  _ret = _x;
            };
      };
} forEach playableUnits;
_ret;
