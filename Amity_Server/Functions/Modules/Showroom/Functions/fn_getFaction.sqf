params[["_faction_id", -1], ["_type", "car"], ["_player", objNull], ["_function", ""]];
private _ret = [];
private _found = false;
if(_faction_id == -1) exitWith { _ret; };
private _arr = switch(_type) do {
      case "car": { showroom_var_vehicles_faction_car };
      case "ship": { showroom_var_vehicles_faction_ship };
      case "air": { showroom_var_vehicles_faction_air };
};
{
      if((_x select 0) == _faction_id) exitWith {
            _ret = _x select 1;
            _found = true;
      };
} forEach _arr;
if(!_found) then {
      _ret = [format["showroom_get_faction:%1:%2", _type, _faction_id], 2] call ExternalS_fnc_ExtDBasync;
      _arr pushBack [_faction_id, _ret];
};

if(!isNull _player && _function != "") exitWith {
      [_ret] remoteExec [_function, _player];
};
_ret;
