[Shop_var_saved_gear] call Client_fnc_loadItems;
Shop_var_saved_gear = [];
if(!isNull Shop_var_camera) then {
      Shop_var_camera cameraEffect ["TERMINATE","BACK"];
      camDestroy Shop_var_camera;
};
Shop_var_preview = false;
