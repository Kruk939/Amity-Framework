housing_var_types = [];
housing_var_modules = [];
housing_var_houses = [];
housing_var_houses_all = [];
housing_var_houses_available = [];
housing_var_houses_spawned_furnitures = [];

[] call ServerModules_Housing_fnc_load;
if(!isNil "ServerModules_Permissions_fnc_insert") then {
      ["house_view", "[House] View"] call ServerModules_Permissions_fnc_insert;
};