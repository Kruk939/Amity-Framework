private _idc = ctrlIDC (_this select 0);
private _selectedIndex = _this select 1;
diag_log format["data: %1", (_this select 0) lbData _selectedIndex];
private _class = toLower(lbData [_idc, _selectedIndex]);
diag_log format["useItem: %1 %2", _this, (lbData [_idc, _selectedIndex])];
private _current = {toLower(_x) == _class} count ((magazines player) + (items player));
if(_current == 0) exitwith {};
private _item = [];
{
      if(_class == _x select 0) exitWith {
            _item = _x;
      };
} forEach UsableItems_var_items;
diag_log format["item: %1", _item];
if((count _item) != 0) then {
      _item params["", "_code", "_remove", "_params"];
      [_class, _current, _params] call _code;
      if(_remove) then {
            player removeItem _class;
      };
      closeDialog 0;
} else {
      {
            if(_class == _x select 0) exitWith {
                  [_class] call ClientModules_UsableItems_fnc_attach;
                  closeDialog 0;
            };
      } forEach UsableItems_var_placable;
};
false;
