params[["_type", "Car"]];
if(!(_type IN ["Car", "Air", "Ship"])) exitWith {};

disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "garage");
private _ok = createDialog _dialog;
if(!_ok) exitWith {};
private _display = findDisplay 1005;
if(isNull _display) exitWith {};
private _faction_id = player getVariable["faction_id", -1];
_display setVariable["type", _type];
[player getVariable["profile_id", -1], _faction_id, player, "Client_fnc_garage_receive"] remoteExecCall ["Server_fnc_getGarage", 2];
