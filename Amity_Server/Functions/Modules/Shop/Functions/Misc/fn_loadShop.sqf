params[["_id", -1], ["_player", objNull], ["_function", ""]];
private _shop = [];
if(_id == -1) exitWith {_shop;};

private _shop = ([format["shop_get_shops:%1", _id], 2] call ExternalS_fnc_ExtDBasync) select 0;
private _categories = [format["shop_get_categories:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
{
      _x params["_i"];
      private _items = [format["shop_get_items:%1", _i], 2] call ExternalS_fnc_ExtDBasync;
      _x pushBack _items;
} forEach _categories;
_shop pushBack _categories;

if(!isNull _player && _function != "") exitWith {
      [_shop] remoteExec [_function, _player];
};
_shop;
