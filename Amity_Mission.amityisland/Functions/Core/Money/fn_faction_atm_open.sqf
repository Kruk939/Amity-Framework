disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "faction_atm");
if(dialog) then { closeDialog 0; };
private _ok = createDialog _dialog;
if(!_ok) exitWith {};

private _display = findDisplay 1011;
if(isNull _display) exitWith { closeDialog 0; };
private _profile_id = player getVariable["profile_id", -1];
_display setVariable["profile_id", _profile_id];
[_profile_id, player, "Client_fnc_atm_faction_receive"] remoteExecCall ["Server_fnc_bankGetFaction", 2];
