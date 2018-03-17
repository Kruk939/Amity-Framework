disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "factionMembers");
private _ok = createDialog _dialog;
if(!_ok) exitWith {};
private _display = findDisplay 1032;
if(isNull _display) exitWith {};
