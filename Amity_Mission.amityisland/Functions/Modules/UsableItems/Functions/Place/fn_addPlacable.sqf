params[["_item", ""], ["_class", ""], ["_pos", [0,1.5,1]], ["_rel", [1.6, 0]]];
if(_item == "" || _class == "") exitWith { false; };
_item = toLower(_item);
_class = toLower(_class);
private _i = [_item] call ClientModules_UsableItems_fnc_find;
if(count _i != 0) exitWith { false; };
_i = [_class] call ClientModules_UsableItems_fnc_find;
if(count _i != 0) exitWith { false; };

UsableItems_var_placable pushBack[_item, _class, _pos, _rel];
true;
