params[["_item", ""], ["_code", {}], ["_remove", true], "_params"];
if(_item == "") exitWith { false; };
if(isNil "_params") then { _params = []; };
UsableItems_var_items pushBack [toLower(_item), _code, _remove, _params];
true;
