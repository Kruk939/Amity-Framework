params[["_profile_id", -1]];
if(_profile_id == -1) exitWith {};
disableSerialization;
if(player getVariable["module_computer", -1] == -1) exitWith {};
if(dialog) then { closeDialog 0; };
private _ok = createDialog "computer_check_profile";
if(!_ok) exitWith {};
private _display = findDisplay 15001;
if(isNull _display) exitWith {};
_display setVariable["profile_id", _profile_id];
[_profile_id, player, "ClientModules_Computer_fnc_computer_check_profile_receive"] remoteExec ["ServerModules_Computer_fnc_getProfile", 2];
