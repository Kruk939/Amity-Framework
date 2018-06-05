disableSerialization;
if(dialog) then { closeDialog 0; };
private _ok = createDialog "phone_services";
if(!_ok) exitWith {};
[] call ClientModules_Phone_fnc_setBackground;
private _display = findDisplay 1103;
private _categories = [] call ClientModules_Phone_fnc_getServiceCategories;
_display setVariable["categories", _categories];


{
      _x params["_id", "_name", ""];
      private _index = lbAdd[1500, _name];
      lbSetData[1500, _index, str(_id)];
} forEach _categories;

if((count _categories) != 0) then {
      lbSetCurSel [1500, 0];
};
