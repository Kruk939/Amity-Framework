private _basic = getArray(missionConfigFile >> "Shop" >> "basic");
{
      _x params["", "_id", "_class"];
      private _objects = nearestObjects[[0,0,0],[_class], 500000];
      {
            _x setVariable["shop_id", _id];
            Shop_var_shop_objects pushBack _x;
      } forEach _objects;
} forEach _basic;
Shop_var_initialized = true;
