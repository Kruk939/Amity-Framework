private _faction_id = player getVariable["faction_id", -1];
if(_faction_id == -1) exitWith {};
if(!(["faction_atm_payin"] call Client_fnc_checkPermission || ["faction_atm_transfer"] call Client_fnc_checkPermission || ["faction_atm_withdraw"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "faction_atm");
if(dialog) then { closeDialog 0; };
private _ok = createDialog _dialog;
if(!_ok) exitWith {};

private _display = findDisplay 1011;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["faction_id", _faction_id];
[_faction_id, player, "Client_fnc_faction_atm_receive"] remoteExecCall ["Server_fnc_bankGetFaction", 2];
