if(dialog) then {
      closeDialog 0;
};

disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "factionCreate");
private _ok = createDialog _dialog;
if(!_ok) exitWith {};
private _display = findDisplay 1030;
if(isNull _display) exitWith {};
private _types = getArray(missionConfigFile >> "Amity" >> "Misc" >> "Faction" >> "price");
{
      private _index = lbAdd[2100, localize (_x select 0)];
      lbSetData[2100, _index, str(_x)];
} forEach _types;
if(count _types != 0) then {
      lbSetCurSel[2100, 0];
};
