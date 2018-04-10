params[["_id", -1], ["_player", objNull], ["_function", ""]];
private _ret = [];
if(_id == -1) exitWith {_ret;};
private _found = false;
{
      //_x params["_id", "_name", "_faction_id", "_type", "_image", "_categories"];
      if((_x select 0) == _id) exitWith {
            _ret = _x;
            _found = true;
      };
} forEach shops_var_shops;
if(!_found) then {
      _ret = [_id] call ServerModules_Shop_fnc_loadShop;
      shops_var_shops pushBack _ret;
};
if(!isNull _player && _function != "") exitWith {
      [_ret] remoteExec [_function, _player];
};
_ret;
