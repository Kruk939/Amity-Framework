params[["_plate", ""]];
if(dialog) then { closeDialog 0; };
private _ok = createDialog "computer_add_vehicle";
if(!_ok) exitWith {};
private _display = findDisplay 15005;
if(isNull _display) exitWith { closeDialog 0; };

private _configs = [] call ClientModules_Computer_fnc_getWantedConfigs;
{
      private _id = getNumber(_x >> "id");
      private _index = lbAdd[2100, getText(_x >> "name") call BIS_fnc_localize];
      lbSetData[2100, _index, str(_id)];
} forEach _configs;
if(lbSize 2100 != 0) then { lbSetCurSel[2100, 0]; };
[_this, "ClientModules_Computer_fnc_computer_add_vehicle_open"] call ClientModules_Computer_fnc_addLast;
ctrlSetText[1400, _plate];
