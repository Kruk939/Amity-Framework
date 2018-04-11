params[["_id", -1]];
if(_id == -1) exitWith {};
[_id, player, "ClientModules_Shop_fnc_receive"] remoteExec ["ServerModules_Shop_fnc_getShop", 2];
