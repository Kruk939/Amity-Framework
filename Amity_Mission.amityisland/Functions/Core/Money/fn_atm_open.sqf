disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "atm");
if(dialog) then { closeDialog 0; };
private _ok = createDialog _dialog;
if(!_ok) exitWith {};

private _display = findDisplay 1010;
if(isNull _display) exitWith { closeDialog 0; };
private _profile_id = player getVariable["profile_id", -1];
_display setVariable["profile_id", _profile_id];
[_profile_id, player, "Client_fnc_atm_receive"] remoteExec ["Server_fnc_bankGetProfile", 2];
