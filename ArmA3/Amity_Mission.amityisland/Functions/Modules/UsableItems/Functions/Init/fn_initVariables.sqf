UsableItems_var_items = [];
UsableItems_var_protection = 0;

UsableItems_var_placable = [];
UsableItems_var_attached = objNull;



private _configs = configProperties [missionConfigFile, "(isClass _x)", true];
{
      if(isClass(_x >> "UsableItems")) then {
            private _config = _x >> "UsableItems";
            if(isArray(_config >> "equipment")) then {
                  private _array = getArray(_config >> "equipment");
                  {
                        _x call ClientModules_UsableItems_fnc_addPlacable;
                  } forEach _array;
            };
      };
} forEach _configs;
