params[["_target",objNull]];

//variable check
if(player getVariable["faction_id", -1] == -1) exitWith {};
if(isNull _target) exitWith {};

//display/dialog check
disableSerialization;
private _ok = createDialog "license_preview";
if(!_ok) exitWith {};
private _display = findDisplay 666602;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["target", _target];
[player, "ClientModules_Licenses_fnc_preview_receive"] remoteExecCall["ClientModules_Licenses_fnc_getLicenses", _target];
