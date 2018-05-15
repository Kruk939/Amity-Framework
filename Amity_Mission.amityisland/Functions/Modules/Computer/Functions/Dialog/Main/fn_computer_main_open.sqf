disableSerialization;
if(player getVariable["module_computer", -1] == -1) exitWith {};
if(dialog) then { closeDialog 0; };
private _ok = createDialog "computer_main";
if(!_ok) exitWith {};
private _display = findDisplay 15000;
if(isNull _display) exitWith {};
[player, "ClientModules_Computer_fnc_computer_main_receive"] remoteExec ["ServerModules_Computer_fnc_openMain", 2];
private _messageAccess = getNumber(missionConfigFile >> "Computer" >> "Messages" >> "access");
if(player getVariable["module_computer", -1] < _messageAccess) then {
      ctrlEnable[1401, false];
      ctrlEnable[1610, false];
};
{
      if(alive _x && isPlayer _x) then {
            private _index = lbAdd[2100, _x getVariable["name", ""]];
            lbSetData[2100, _index, str(_x getVariable["profile_id", -1])];
      };
} forEach playableUnits;
