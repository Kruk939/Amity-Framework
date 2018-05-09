if(isNull UsableItems_var_attached) exitWith {};
private _class = typeOf UsableItems_var_attached;
detach UsableItems_var_attached;
deleteVehicle UsableItems_var_attached;
UsableItems_var_attached = objNull;
private _item = [_class] call ClientModules_UsableItems_fnc_find;
if(count _item == 0) exitWith {};
_item params["", "_class", "", "_rel"];
private _obj = _class createVehicle getPos player;
private _relpos = player getRelPos _rel;
_obj allowDamage false;
_obj setPos _relpos;
_obj setDir (getDir player);
_obj setVectorUp surfaceNormal getpos _obj;

if(isNull(_obj getVariable["owner", objNull])) then {
      _obj setVariable["owner", player, true];
      [_obj] remoteExec ["ClientModules_UsableItems_fnc_addAction", -2];
};
["onUsableItemPlaced", [_obj]] call Client_fnc_eventCall;
