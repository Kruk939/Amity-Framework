params[["_target", objNull]];
if(isNull _target) exitWith {};
if(_target getVariable["profile_id", -1] == -1) exitWith {};
if(player getVariable["jail_put_player", -1] < getNumber(missionConfigFile >> "Jail" >> "Setup" >> "Permissions" >> "jailPlayer")) exitWith {
      ["STR_JAIL_NO_PERRMISION", true] call Client_fnc_domsg;
};
private _jail = [_target] call ClientModules_Jail_fnc_jail_getNearest;
if(isNull _jail) exitWith { ["STR_JAIL_NO_NEAR", true] call Client_fnc_domsg; };

if(dialog) then { closeDialog 0; };
private _ok = createDialog "jail_insert";
if(!_ok) exitWith {};
disableSerialization;
private _display = findDisplay 13001;
if(isNull _display) exitWith {};
_display setVariable["target", _target];
ctrlSetText[1000, _target getVariable["name", ""]];

private _securities = getArray(_jail >> "Sentence" >> "securities");
{
      private _security = getArray([_x] call ClientModules_Jail_fnc_jail_getSecurity);
      if(count _security != 0) then {
            private _index = lbAdd[2100, (_security select 1) call BIS_fnc_localize];
            lbSetData[2100, _index, str(_x)];
      };
} forEach _securities;
if(lbSize 2100 > 0) then {
      lbSetCurSel [2100, 0];
};
