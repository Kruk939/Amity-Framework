params[["_item", ""]];
if(_item == "" || !isNull UsableItems_var_attached) exitWith {};
private _i = [_item] call ClientModules_UsableItems_fnc_find;
if(count _i == 0) exitWith {};
_i params["", "_class", "_pos", ""];
player removeItem _item;

UsableItems_var_attached = _class createVehicle (getPos player);
UsableItems_var_attached attachTo [player, _pos];
