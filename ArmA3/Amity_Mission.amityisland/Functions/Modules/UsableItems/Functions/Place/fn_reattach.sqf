params[["_target", objNull]];
if(isNull _target || !isNull UsableItems_var_attached) exitWith {};
private _item = [typeOf _target] call ClientModules_UsableItems_fnc_find;
if(count _item == 0) exitWith {};
_item params["", "", "_pos"];
_target attachTo[player, _pos];
UsableItems_var_attached = _target;
