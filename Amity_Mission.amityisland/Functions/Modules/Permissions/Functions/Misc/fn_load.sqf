private _id = player getVariable["faction_id", -1];
if(_id == -1) exitWith {};
[_id, player, "ClientModules_Permissions_fnc_receive"] remoteExecCall["ServerModules_Permissions_fnc_getFaction", 2];
