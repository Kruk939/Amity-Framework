params[["_number", ""]];
private _ret = objNull;
if(_number == "") exitWith { _ret; };
{
      if(isPlayer _x) then {
            if((_x getVariable["phone_number", ""]) == _number) exitWith {
                  _ret = _x;
            };
      };
} forEach playableUnits;
_ret;
