params[["_shop_id", -1], ["_category_id", -1], ["_item_id", -1], ["_count", 0]];
private _ret = [];
if(_shop_id == -1 || _item_id == -1 || _category_id == -1) exitWith {};
private _shop = [_shop_id] call ServerModules_Shop_fnc_getShop;
_shop params["_id", "", "", "", "_categories"];
if(_id == _shop_id) exitWith {
      {
            _x params["_id", "", "_items"];
            if(_id == _category_id) exitWith {
                  {
                        _x params["_id", "", "", "", "_stock"];
                        if(_id == _item_id) exitWith {
                              if((_stock - _count) >= 0) then {
                                    _ret = _x;
                              };
                        };
                  } forEach _items;
            };
      } forEach _categories;
};
_ret;
