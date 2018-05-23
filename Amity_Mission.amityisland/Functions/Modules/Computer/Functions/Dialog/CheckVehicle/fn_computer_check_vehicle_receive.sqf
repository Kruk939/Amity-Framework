params[["_vehicle", []], ["_cases", []], ["_profile", []], ["_faction", []]];
disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 15002;
if(isNull _display) exitWith { closeDialog 0; };
if(count _vehicle == 0) exitWith { closeDialog 0; }; //not found
_display setVariable["vehicle", _vehicle];
_display setVariable["cases", _cases];
_display setVariable["profile", _profile];
_display setVariable["faction", _faction];

_vehicle params["", "", "", "", "_class", "_vin", "_plate", "", "", "", "", "_color", "_material"];
ctrlSetText [1001, localize "STR_NO"];
ctrlSetText [1002, localize "STR_NO"];
if((count _profile) != 0 && (count _faction) == 0) then {
      _profile params["", "", "", "_first", "_last"];
      ctrlSetText[1001, format["%1 %2", _first, _last]];
} else {
      if(count _faction != 0) then {
            _faction params["", "", "", "_short", "_long"];
            ctrlSetText[1002, format["[%1] %2", _short, _long]];
      };
};
[(_display getVariable["id", -1]), "ClientModules_Computer_fnc_computer_check_vehicle_open"] call ClientModules_Computer_fnc_addLast;

ctrlSetText[1003, _plate];
ctrlSetText[1004, _vin];
ctrlSetText[1005, getText(configFile >> "CfgVehicles" >> _class >> "displayName")];
ctrlSetText[1006, getText(configFile >> "CfgIvoryTextures" >> _color >> "displayName")];
ctrlSetText[1007, getText(configFile >> "CfgIvoryMaterials" >> _material >> "displayName")];
ctrlSetText[1009, str(count _cases)];

private _wantedLevel = -1;
{
      _x params["_id", "", "", "_wanted_id", "_reason", "_closed_by"];
      private _value = 1000 - _wanted_id;
      if(typeName _closed_by == "OBJECT" && _wanted_id > _wantedLevel) then { _wantedLevel = _wanted_id; _value = _value - 100; };
      private _index = lbAdd[2100, format["[%1] %2", _id, _reason]];
      lbSetData[2100, _index, str(_id)];
      lbSetValue[2100, _index, _value];
} forEach _cases;
lbSortByValue 2100;
private _wantedConf = [_wantedLevel, "id"] call ClientModules_Computer_fnc_getWantedConfig;
if(!isNull _wantedConf) then {
      private _wantedControl = _display displayCtrl 1008;
      ctrlSetText[1008, getText(_wantedConf >> "name") call BIS_fnc_localize];
      _wantedControl ctrlSetBackgroundColor getArray(_wantedConf >> "color");
};
