params[["_cargo", objNull], ["_shop_id", -1], ["_remove", true], ["_random", []]];
if(isNull _cargo || _shop_id == -1) exitWith {};
private _shop = [_shop_id] call ServerModules_Shop_fnc_getShop;
if(count _shop == 0) exitWith {};
private _toAdd = [];

//generating random
private _current = 0;
_random params[["_minItems", 5], ["_maxItems", 10], ["_chance", 80]];
_shop params["", "", "", "", "", "_categories"];
while{_current < _maxItems} do {
      private _category = _categories call BIS_fnc_selectRandom;
      _category params["", "", "", "_items"];
      private _item = _items call BIS_fnc_selectRandom;
      private _count = round(random(_maxItems));
      _toAdd pushBack [_item, _count];
      _current = _current + 1;
      if(_current > _minItems && random(100) > (100 - _chance)) exitWith {};
};
{
      _x params[["_item", []], "_count"];
      _item params["_id", "_class", "_type", "", "_stock"];
      if(_remove) then {
            if(_count > _stock) then { _count = _stock; };
            private _q = [format["shop_update_items_count_sub:%1:%2", _id, _count], 2] call ExternalS_fnc_ExtDBasync;
            _stock = (_q select 0) select 0;
            _x set[4, _stock];
      };
      if(_type != "backpack") then {
            _cargo addItemCargoGlobal[_class, _count];
      } else {
            _cargo addBackpackCargoGlobal[_class, _count];
      };
} forEach _toAdd;
