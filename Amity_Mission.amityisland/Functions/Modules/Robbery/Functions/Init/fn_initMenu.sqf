if(!isNil "Shop_var_initialized") then {
      /*private _array = [];
      {
            private _id = _x getVariable["shop_id", -1];
            private _code = format["[_target, %1] call ClientModules_Robbery_fnc_robShop;", _id];
            _code = compile _code;
            _array pushBack [
                  [format["ROBBERY_SHOP_%1", _forEachIndex], localize "STR_ROBBERY_ROB_SHOP", "", _code,{true},{},"","screenloc",3],
                  ["object",[_x, 0, ["ACE_MainActions"]]]
            ];
      } forEach Shop_var_shop_objects;
      _array call Client_fnc_addAction;
      */
      private _basic = getArray(missionConfigFile >> "Shop" >> "basic");
      private _array = [];
      {
            _x params["", "_id", "_class"];
            private _code = format["[_target, %1] call ClientModules_Robbery_fnc_robShop;", _id];
            _code = compile _code;
            _array pushBack [
                  [format["SHOP_BASIC_%1", _forEachIndex], localize "STR_ROBBERY_ROB_SHOP", "", _code,{true},{},"","screenloc",3],
                  ["class", [_class, 0, ["ACE_MainActions"]]]
            ];
      } forEach _basic;
      _array call Client_fnc_addAction;

};
