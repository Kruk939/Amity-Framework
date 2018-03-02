if(dialog) then { closeDialog 0; };
disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "createProfile");
private _ok = createDialog _dialog;
if(!_ok) exitWith {};
private _genders = getArray (missionConfigFile >> "Amity" >> "Custamization" >> "Setup" >> "genders");
{
      private _index = lbAdd[2100, (_x select 0)];
      lbSetData[2100, _index, (_x select 1)];
} foreach _genders;
if((count _genders) != 0) then {
      lbSetCurSel [2100, 0];
};
