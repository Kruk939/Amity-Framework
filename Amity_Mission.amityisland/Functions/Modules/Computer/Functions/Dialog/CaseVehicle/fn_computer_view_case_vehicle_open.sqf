params[["_id", -1], ["_data", []]];
if(_id == -1) exitWith {};
if(dialog) then { closeDialog 0; };
private _ok = createDialog "computer_view_case_vehicle";
if(!_ok) exitWith {};
private _display = findDisplay 15007;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["id", _id];

if(count _data != 0) then {
      [_this, "ClientModules_Computer_fnc_computer_view_case_vehicle_open"] call ClientModules_Computer_fnc_addLast;
      _data params["_id", "", "", "_wanted_id", "_reason", "_closed_by", "_vin", "_plate", "_color", "_material", "_rims", "_class", "_officer_name", "_closed_name"];
      _display setVariable["data", _data];
      ctrlSetText[1000, str(_id)];
      ctrlSetText[1001, _plate];
      ctrlSetText[1002, _reason];
      ctrlSetText[1003, _officer_name];
      _closed_name = if(typeName _closed_by == "OBJECT") then { localize "STR_COMPUTER_NOBODY"; } else { ctrlSetText[1601, localize "STR_COMPUTER_CASE_REOPEN"]; _closed_name; };
      ctrlSetText[1004, _closed_name];
      private _selected = -1;
      private _configs = [] call ClientModules_Computer_fnc_getWantedConfigs;
      {
            private _id = getNumber(_x >> "id");
            if(_id == _wanted_id) then { _selected = _forEachIndex; };
            private _index = lbAdd[2100, getText(_x >> "name") call BIS_fnc_localize];
            lbSetData[2100, _index, str(_id)];
      } forEach _configs;
      if(_selected != -1) then {
            lbSetCurSel[2100, _selected];
      };

} else {
      [_id, true, player, "ClientModules_Computer_fnc_computer_view_case_vehicle_receive"] remoteExec ["ServerModules_Computer_fnc_getCase", 2];
};
