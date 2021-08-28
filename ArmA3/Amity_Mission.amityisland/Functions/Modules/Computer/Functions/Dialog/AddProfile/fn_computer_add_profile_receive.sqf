params[["_data", []]];
if(!dialog) exitWith {};
private _display = findDisplay 15004;
if(isNull _display) exitWith { closeDialog 0; };
if(count _data == 0) exitWith {};
[[(_display getVariable["id", -1]), _data], "ClientModules_Computer_fnc_computer_add_profile_open"] call ClientModules_Computer_fnc_addLast;
_data params["", "", "", "_first_name", "_last_name"];
ctrlSetText[1000, format["%1 %2", _first_name, _last_name]];
_display setVariable["data", _data];
