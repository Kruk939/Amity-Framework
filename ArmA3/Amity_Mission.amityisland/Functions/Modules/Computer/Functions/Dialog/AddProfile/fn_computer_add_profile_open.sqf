params[["_profile_id", -1], ["_data", []]];
if(_profile_id == -1) exitWith {};
if(dialog) then { closeDialog 0; };
private _ok = createDialog "computer_add_profile";
if(!_ok) exitWith {};
private _display = findDisplay 15004;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["id", _profile_id];

private _configs = [] call ClientModules_Computer_fnc_getWantedConfigs;
{
      private _id = getNumber(_x >> "id");
      private _index = lbAdd[2100, getText(_x >> "name") call BIS_fnc_localize];
      lbSetData[2100, _index, str(_id)];
} forEach _configs;
if(lbSize 2100 != 0) then { lbSetCurSel[2100, 0]; };

if(count _data == 0) then {
      [_profile_id, player, "ClientModules_Computer_fnc_computer_add_profile_receive"] remoteExecCall ["ServerModules_Computer_fnc_getPersonProfile", 2];
} else {
      [_this, "ClientModules_Computer_fnc_computer_add_profile_open"] call ClientModules_Computer_fnc_addLast;
      _data params["", "", "", "_first_name", "_last_name"];
      ctrlSetText[1000, format["%1 %2", _first_name, _last_name]];
      _display setVariable["data", _data];
};
