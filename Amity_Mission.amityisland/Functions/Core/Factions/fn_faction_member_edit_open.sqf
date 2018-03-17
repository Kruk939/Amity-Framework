disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "factionMemberEdit");
private _ok = createDialog _dialog;
if(!_ok) exitWith {};
private _display = findDisplay 1033;
if(isNull _display) exitWith {};
