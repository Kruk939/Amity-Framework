private _onChange = {
      params[["_data", []]];
      {
            _x params["_id", "_level"];
            {
                  if((_x select 0) == _id) exitWith {
                        _x set[2, _level];
                  };
            } forEach permissions_var_active;
      } forEach _data;
};
["onFactionPermissionsChanged", _onChange] call Client_fnc_eventAdd;

["onFactionWorkingStart", ClientModules_Permissions_fnc_load] call Client_fnc_eventAdd;
["onFactionWorkingChange", ClientModules_Permissions_fnc_load] call Client_fnc_eventAdd;

private _unLoad = {
      permissions_var_active = [];
};
["onFactionWorkingStop", _unLoad] call Client_fnc_eventAdd;
