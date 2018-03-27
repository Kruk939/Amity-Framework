params[["_type", "car"]];

if(dialog) then { closeDialog 0; };
private _ok = createDialog "client_showroom";
if(!_ok) exitWith {};
private _display = findDisplay 2000;
_display setVariable["type", _type];
if(isNull _display) exitWith {};
[player getVariable["faction_id", -1], _type, player, "ClientModules_Showroom_fnc_receive"] remoteExec ["ServerModules_Showroom_fnc_getVehicles", 2];
