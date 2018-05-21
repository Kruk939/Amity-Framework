params[["_id", -1], ["_target", objNull]];
if(_id == -1) exitWith {};
disableSerialization;
private _ok = createDialog "Amity_store";
if(!_ok) exitWith {};
private _display = findDisplay 9900;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["target", _target];
[_id, player, "ClientModules_Shop_fnc_receive"] remoteExec ["ServerModules_Shop_fnc_getShop", 2];
