params[["_target",objNull]];

//variable check
if(player getVariable["faction_id", -1] == -1) exitWith {};
if(isNull _target) exitWith {};

//display/dialog check
disableSerialization;
private _ok = createDialog "license_revoke";
if(!_ok) exitWith {};
private _display = findDisplay 666603;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["target", _target];
[player, "ClientModules_Licenses_fnc_remove_receive"] remoteExecCall["ClientModules_Licenses_fnc_getLicenses", _target];
