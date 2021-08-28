disableSerialization;
params[["_wantedPersons", []], ["_wantedVehicles", []], ["_messages", []]];
if(!dialog) exitWith {};
private _display = findDisplay 15000;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["wantedPersons", _wantedPersons];
_display setVariable["wantedVehicles", _wantedVehicles];
_display setVariable["messages", _messages];

//find danger level
//private _danger_text = _display displayCtrl 1000;
//_danger_text ctrlSetBackgroundColor [];
ctrlSetText[1000, str(computer_var_dangerLevel)];

lbClear 1500;
{
      _x params["_id", "", "", "_level", "", "", "_name", "", ""];
      private _index = lbAdd[1500, format["[%1] %2", _level, _name]];
      lbSetData[1500, _index, str(_id)];
} forEach _wantedPersons;

lbClear 1501;
{
      _x params["_id", "", "", "_level", "", "", "", "_plate", "", "", "", "_class", "", ""];
      private _index = lbAdd[1501, format["[%1] %2 (%3)", _level, _plate, getText(configFile >> "CfgVehicles" >> _class >> "displayName")]];
      lbSetData[1501, _index, str(_id)];
} forEach _wantedVehicles;

private _text = "";
{
      _text = format["%1\n%2", _text, _x];
} forEach _messages;
ctrlSetText[1001, _text];
