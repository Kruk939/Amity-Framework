params[["_target", objNull]];
if(isNull _target) exitWith {};
private _i = [typeOf _target] call ClientModules_UsableItems_fnc_find;
if(count _i == 0) exitWith {};
_i params["_item", ""];

private _onFinish = {
      (_this select 0) params["_target", "_item"];
      if(isNull _target) exitWith {};
      player addItem _item;
      deleteVehicle _target;
};
private _onFailure = {};

[10, [_target, _item], _onFinish, _onFailure, localize "STR_USABLE_ITEMS_PICKING_UP"] call Client_fnc_progressBar;
