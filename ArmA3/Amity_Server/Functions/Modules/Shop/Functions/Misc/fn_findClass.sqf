params[["_class", ""], ["_shop_id", -1]];
private _ret = [];
if(_class == "") exitWith { _ret; };
private _fnc_search_categories = {
      params[["_categories", []]];
      private _ret = [];
      {
            _x params["", "", "", "_items"];
            {
                  _x params["", "_c"];
                  if(toLower(_class) == toLower(_c)) exitWith {
                        _ret = _x;
                  };
            } forEach _items;
            if(count _ret != 0) exitWith {};
      } forEach _categories;
      _ret;
};
if(_shop_id != -1) then {
      private _shop = [_shop_id] call ServerModules_Shop_fnc_getShop;
      _shop params["", "", "", "", "", "_categories"];
      _ret = [_categories] call _fnc_search_categories;
} else {
      {
            _x params["", "", "", "", "", "_categories"];
            _ret = [_categories] call _fnc_search_categories;
            if(count _ret != 0) exitWith {};
      } forEach shops_var_shops;
};
_ret;
