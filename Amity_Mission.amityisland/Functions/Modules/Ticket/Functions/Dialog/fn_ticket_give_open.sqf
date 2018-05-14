params[["_target", objNull]];
if(isNull _target) exitWith {};
disableSerialization;
if(dialog) then { closeDialog 0; };
private _ok = createDialog "ticket_give";
if(!_ok) exitWith {};
private _display = findDisplay 14000;
if(isNull _display) exitWith {};
_display setVariable["target", _target];
_display setVariable["prest", -1];
private _configs = [] call ClientModules_Ticket_fnc_getPrests;
private _index = lbAdd[2100, localize "STR_TICKET_DIALOG_GIVE_NONE"];
lbSetData[2100, _index, str(-1)];

{
      _index = lbAdd[2100, getText(_x >> "name") call BIS_fnc_localize];
      lbSetData[2100, _index, str(getNumber(_x >> "id"))];
} forEach _configs;
lbSetCurSel [2100, 0];
ctrlSetText[1000, _target getVariable["name", ""]];
