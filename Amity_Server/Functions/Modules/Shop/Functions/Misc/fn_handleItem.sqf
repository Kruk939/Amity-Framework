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
                              if((_stock + _count) >= 0) then {
                                    private _stock = 0;
                                    if(_count < 0) then {
                                          private _q = [format["shop_update_items_count_sub:%1", _id, (0 - _count)], 2] call ExternalS_fnc_ExtDBasync;
                                          _stock = (_q select 0) select 0;
                                    } else {
                                          private _q = [format["shop_update_items_count_add:%1", _id, _count], 2] call ExternalS_fnc_ExtDBasync;
                                          _stock = (_q select 0) select 0;
                                    };
                                    _x set[4, _stock];
                                    _ret = _x;
                              };
                        };
                  } forEach _items;
            };
      } forEach _categories;
};
_ret;
