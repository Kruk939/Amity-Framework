params[["_faction_id", -1], ["_type", "car"], ["_player", objNull], ["_function", ""]];
private _arr = switch(_type) do {
      case "car": { showroom_var_vehicles_car };
      case "ship": { showroom_var_vehicles_ship };
      case "air": { showroom_var_vehicles_air };
};
private _fac = [];
if(_faction_id != -1) then {
      _fac = [_faction_id, _type] call ServerModules_Showroom_fnc_getFaction;
};

if(!isNull _player && _function != "") exitWith {
      [_arr, _fac] remoteExec [_function, _player];
};
[_arr, _fac];
