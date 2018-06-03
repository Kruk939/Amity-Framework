params[["_target", objNull]];
if(isNull _target) exitWith {};
if(dialog) then { closeDialog 0 ;};
private _ok = createDialog "give_cash";
if(!_ok) exitWith {};
private _display = findDisplay 666604;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["target", _target];
ctrlSetText[1000, _target getVariable["name", ""]];
