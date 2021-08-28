params[["_licenses", []], ["_data", []]];
disableSerialization;
private _display = findDisplay 666602;
if(isNull _display) exitWith { closeDialog 0; };
_display setVariable["licenses", _licenses];
_display setVariable["data", _data];

private _ids = (["view"] call ClientModules_Licenses_fnc_getAvialableLicenses) + (["revoke"] call ClientModules_Licenses_fnc_getAvialableLicenses) + (["give"] call ClientModules_Licenses_fnc_getAvialableLicenses);

//addding licenses to listbox
{
      _x params["_id", "_license_id", "", ""];
      if(_license_id IN _ids) then {
            private _name = ([_license_id] call ClientModules_Licenses_fnc_get) select 2;
            private _index = lbAdd[1500, _name];
            lbSetData[1500, _index, str(_id)];
      };
} forEach _licenses;
