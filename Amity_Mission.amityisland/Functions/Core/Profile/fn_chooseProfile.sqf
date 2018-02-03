params[["_profiles", []]];
if(dialog) then { closeDialog 0; };
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "profile");
private _ok = createDialog _dialog;
if(!_ok) exitWith {};
