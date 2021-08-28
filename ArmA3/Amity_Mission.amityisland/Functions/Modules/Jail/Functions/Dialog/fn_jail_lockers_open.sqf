params[["_target", objNull]];
if(isNull _target) exitWith {};
if(player getVariable["jail_lockers_access", -1] < getNumber(missionConfigFile >> "Jail" >> "Setup" >> "Permissions" >> "allLockersOpen")) exitWith {
      ["STR_JAIL_NO_PERRMISION", true] call Client_fnc_domsg;
};
private _jail = [_target] call ClientModules_Jail_fnc_jail_getNearest;
if(isNull _jail) exitWith { ["STR_JAIL_NO_NEAR", true] call Client_fnc_domsg; };
private _jail_id = getNumber(_jail >> "id");

if(dialog) then { closeDialog 0; };
private _ok = createDialog "jail_lockers";
if(!_ok) exitWith {};
disableSerialization;
private _display = findDisplay 13002;
if(isNull _display) exitWith {};
_display setVariable["target", _target];
_display setVariable["jail_id", _jail_id];
[_jail_id, player, "ClientModules_Jail_fnc_jail_lockers_receive"] remoteExecCall ["ServerModules_Jail_fnc_allLockers", 2];
{
      private _profile_id = _x getVariable["profile_id", -1];
      if(_profile_id != -1) then {
            private _index = lbAdd[2100, format["%1", _x getVariable["name", ""]]];
            lbSetData[2100, _index, str(_profile_id)];
      };
} forEach allPlayers;
if(lbSize 2100 != 0) then { lbSetCurSel [2100, 0]; };
