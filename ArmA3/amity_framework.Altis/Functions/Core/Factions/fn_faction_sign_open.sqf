if(dialog) then {
      closeDialog 0;
};
disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "factionSign");
private _ok = createDialog _dialog;
if(!_ok) exitWith {};
private _display = findDisplay 1031;
if(isNull _display) exitWith {};
[player getVariable["profile_id", -1], player, "Client_fnc_faction_sign_receive"] remoteExecCall ["Server_fnc_memberGetFactions", 2];
