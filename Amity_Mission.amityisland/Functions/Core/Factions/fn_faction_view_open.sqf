params[["_faction_id", -1]];
if(_faction_id == -1) then {
      _faction_id = player getVariable["faction_id", -1];
};
if(_faction_id == -1) exitWith {};
//permision check
if(!(["faction_manage"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

if(dialog) then { closeDialog 0; };
disableSerialization;
private _dialog = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Dialogs" >> "factionView");
private _ok = createDialog _dialog;
if(!_ok) exitWith {};
private _display = findDisplay 1034;
_display setVariable ["faction_id", _faction_id];
[_faction_id, player, "Client_fnc_faction_view_receive"] remoteExecCall ["Server_fnc_factionViewData", 2];
