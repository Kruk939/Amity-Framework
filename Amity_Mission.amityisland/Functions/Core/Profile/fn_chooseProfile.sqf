params[["_profiles", []]];
if(dialog) then { closeDialog 0; };
disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "profile");
private _ok = createDialog _dialog;
if(!_ok) exitWith {};
private _display = findDisplay 1000;
if(isNull _display) exitWith {};
_display setVariable["profiles", _profiles];


private _amount = count _profiles;
private _max = getNumber(missionConfigFile >> "Amity" >> "Setup" >> "profiles");
ctrlSetText [1001, format["%1/%2", _amount, _max]];
{
    _x params["_profile_id", "_user_id", "_profile_uid", "_first_name", "_last_name", "_female", "_cash", "_items", "_clothes", "_weapons", "_hunger", "_thirst", "_position"];
    private _index = lbAdd [1500, format["%1 - %2 %3", _profile_id, _first_name, _last_name]];
    lbSetData[1500, _index, str(_x)];
} forEach _profiles;
if(_amount > 0) then {
      lbSetCurSel[1500, 0];
};
