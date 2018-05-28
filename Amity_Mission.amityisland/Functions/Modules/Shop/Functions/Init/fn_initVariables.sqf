Shop_var_saved_gear = [];
Shop_var_preview = false;
Shop_var_camera = objNull;
Shop_var_holder = objNull;
Shop_var_view_lock = false;
Shop_var_initialized = false;
Shop_var_shop_objects = [];

private _basic = getArray(missionConfigFile >> "Shop" >> "basic");
{
      _x params["", "_id", "_class"];
      private _objects = nearestObjects[[0,0,0],[_class], 500000];
      {
            _x setVariable["shop_id", _id];
            Shop_var_shop_objects pushBack _x;
      } forEach _objects;
} forEach _basic;
