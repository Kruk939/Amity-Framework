disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "atm");
if (!dialog) then {
private _ok = createDialog _dialog;
};
//if(!_ok) exitWith {};
private _display = findDisplay 1010;
if(isNull _display) exitWith {};
private _profile_id = player getVariable["profile_id", -1];
[_profile_id, player, "Client_fnc_atm_receive"] remoteExec ["Server_fnc_bankGetProfile", 2];
