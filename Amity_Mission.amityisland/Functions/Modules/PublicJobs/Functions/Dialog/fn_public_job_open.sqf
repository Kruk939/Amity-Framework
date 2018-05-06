disableSerialization;
if(dialog) then { closeDialog 0; };
private _ok = createDialog "public_job";
if(!_ok) exitWith {};
private _display = findDisplay 11000;
if(isNull _display) exitWith {};
private _classes = [] call ClientModules_PublicJobs_fnc_getConfigs;
{
      private _text = getText(_x >> "display") call BIS_fnc_localize;
      private _index = lbAdd [1500, _text];
      lbSetData[1500, _index, getText(_x >> "variable")];
} forEach _classes;
if((count _classes) != 0) then {
      lbSetCurSel[1500, 0];
};
