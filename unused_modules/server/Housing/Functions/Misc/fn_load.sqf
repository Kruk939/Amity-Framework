housing_var_types = ["housing_select_types", 2] call ExternalS_fnc_ExtDBasync;
housing_var_modules = ["housing_select_modules", 2] call ExternalS_fnc_ExtDBasync;
housing_var_houses = ["housing_select_houses", 2] call ExternalS_fnc_ExtDBasync;
{
      _x params["", "_type_id", "", "", "_position"];
      private _mods = [format["housing_select_house_modules:%1", (_x select 0)], 2] call ExternalS_fnc_ExtDBasync;
      private _furn = [format["housing_select_house_furnitures:%1", (_x select 0)], 2] call ExternalS_fnc_ExtDBasync;
      _x pushBack _mods;
      _x pushBack _furn;
      private _type = [_type_id] call ServerModules_Housing_fnc_getType;
      _type params["", "_class"];
      private _nearest = nearestObjects[_position, [_class], 10];
      if((count _nearest) != 0) then {
            private _obj = _nearest select 0;
            [_obj, _x] call ServerModules_Housing_fnc_initHouse;
      };
} forEach housing_var_houses;
private _types = [];
{
      _types pushBack (_x select 1);
} forEach housing_var_types;

housing_var_houses_all = nearestObjects [[0,0,0], _types, 35500];
{
      if((_x getVariable["house_id", -1]) != -1) then {
            housing_var_houses_available pushBack _x;
      };
} forEach housing_var_houses_all;

publicVariable "housing_var_houses_available";
publicVariable "housing_var_modules";
publicVariable "housing_var_types";
