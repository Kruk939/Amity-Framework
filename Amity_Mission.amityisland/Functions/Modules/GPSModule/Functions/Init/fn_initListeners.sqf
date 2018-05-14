private _mapKey = {
      if(player getVariable["module_gps", 0] > 0) then {
            [] spawn ClientModules_GPSModule_fnc_map_loop;
      };
      false;
};
[50, [], _mapKey] call Client_fnc_keyHandlerAdd;
