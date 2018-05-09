params[["_target", objNull]];
if(isNull _target) exitWith {};
private _i = [typeOf _target] call ClientModules_UsableItems_fnc_find;
if(count _i == 0) exitWith {};
_i params["_item", ""];
player addItem _item;
deleteVehicle _target;
