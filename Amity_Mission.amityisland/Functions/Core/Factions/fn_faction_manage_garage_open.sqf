params[["_faction_id", -1]];
if(_faction_id == -1) exitWith {};
if(dialog) then {
      closeDialog 0;
};

disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "factionManageGarage");
private _ok = createDialog _dialog;
if(!_ok) exitWith {};
private _display = findDisplay 1035;
_display setVariable["faction_id", _faction_id];
[_faction_id, player, "Client_fnc_faction_manage_garage_receive"] remoteExec ["Server_fnc_factionGetGarage", 2];
