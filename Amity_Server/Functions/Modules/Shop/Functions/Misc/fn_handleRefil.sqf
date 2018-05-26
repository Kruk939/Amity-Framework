params[["_cargo", objNull], ["_shop_id", -1], ["_player", objNull], ["_function", ""]];
if(isNull _cargo || _shop_id == -1) exitWith {};
private _items = [_cargo] call Client_fnc_getCargo;
{
      _x params[["_i", []], ["_c", []]];
      if((count _i) == (count _c)) then {
            {
                  private _amount = _c select _forEachIndex;
                  private _item = [_x, _shop_id] call ServerModules_Shop_fnc_findClass;
                  _item params["_id", "", "", "", "_stock"];
                  private _q = [format["shop_update_items_count_add:%1:%2", _id, _amount], 2] call ExternalS_fnc_ExtDBasync;
                  _stock = (_q select 0) select 0;
                  _x set[4, _stock];
            } forEach _i;
      };
} forEach _items;
[_cargo] call Client_fnc_clearCargo;
