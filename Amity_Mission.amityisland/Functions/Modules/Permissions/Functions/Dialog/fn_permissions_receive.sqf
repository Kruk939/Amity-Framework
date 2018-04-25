disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 3000;
if(isNull _display) exitWith {};
_display setVariable["members", _this];
