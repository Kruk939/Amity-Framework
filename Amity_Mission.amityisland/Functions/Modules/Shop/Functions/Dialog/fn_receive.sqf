params[["_shops",[]],["_items",[]]];
disableSerialization;
private _display = findDisplay 9900;
if(count _shops == 0 || count _items == 0 || isNull _display) exitWith { closeDialog 0; };
{
      private _name = _x select 2;
      private _index = lbAdd [2100, _name];
      lbSetdata[2100, _index, str(_x)];
} forEach _shops;
_display setVariable ["shops", _shops];
_display setVariable ["items", _items];
lbSetCurSel [2100, 0];
