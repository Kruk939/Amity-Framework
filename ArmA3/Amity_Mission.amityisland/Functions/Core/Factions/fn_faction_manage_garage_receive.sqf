params["_garage", "_members"];
if(typeName _garage != "ARRAY") exitWith {};
disableSerialization;
private _display = findDisplay 1035;
if(isNull _display) exitWith {};
_display setVariable["garage", _garage];
_display setVariable["members", _members];
{
      _x params["_id", "_profile_id", "_faction_id", "_vehicle_id", "_class", "_vin", "_plate", "_status", "_hit", "_damage", "_fuel", "_color", "_material", "_rims", "_windows", "_lights", "_position", "_inventory", "_access_level"];
      private _index = lbAdd [1500, format["%1 [%2] - %3", _id, _plate, getText(configFile >> "CfgVehicles" >> _class >> "displayName")]];
      lbSetData[1500, _index, str(_id)];
} forEach _garage;
private _index = lbAdd[2100, "None"];
lbSetData[2100, _index, "-1"];
{
      _x params["", "", "", "", "", "", "_profile_id", "", "", "", "_first_name", "_last_name"];
      private _index = lbAdd[2100, format["%1 %2", _first_name, _last_name]];
      lbSetData[2100, _index, str(_profile_id)];
} forEach _members;
if((count _garage) != 0) then {
      lbSetCurSel [1500, 0];
};
