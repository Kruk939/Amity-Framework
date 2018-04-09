params[["_shop",[]]];
if(count _shop == 0) exitWith {};
disableSerialization;
private _ok = createDialog "Amity_store";
if(!_ok) exitWith {};
private _display = findDisplay 9900;
if(isNull _display) exitWith { closeDialog 0; };
_shop params["_id", "_name", "_faction_id", "_type", "_categories"];
//todo check faction


_display setVariable["shop", _shop];
_display setVariable["categories", _categories];
_display setVariable["items", []];

{
      _x params["_id", "_name", ""];
      private _index = lbAdd [2100, _name];
      lbSetdata[2100, _index, str(_id)];
} forEach _categories;
if(count _categories != 0) then {
      lbSetCurSel [2100, 0];
};

waitUntil {isNull (findDisplay 9900)};
[] call ClientModules_Shop_fnc_terminateCamera;
