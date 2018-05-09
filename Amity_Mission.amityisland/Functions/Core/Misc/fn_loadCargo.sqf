params[["_holder", objNull], ["_items", [[],[],[],[]]]];
private _ret = false;
if(isNull _holder) exitWith { _ret; };
private _backpackIndex = 3;
{
      _x params[["_i", []], ["_c", []]];
      if((count _i) == (count _c)) then {
            if(_forEachIndex == _backpackIndex) then {
                  {
                        _holder addBackpackCargoGlobal [_x, (_c select _forEachIndex)];
                  } forEach _i;
            } else {
                  {
                        _holder addItemCargoGlobal [_x, (_c select _forEachIndex)];
                  } forEach _i;
            };
      };
} forEach _items;
_ret = true;
_ret;
