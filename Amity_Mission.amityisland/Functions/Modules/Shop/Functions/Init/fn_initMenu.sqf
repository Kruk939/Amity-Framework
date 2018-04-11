private _basic = getArray(missionConfigFile >> "Shop" >> "basic");
private _array = [];
{
      _x params["_name", "_id", "_class"];
      private _code = format["[%1] call ClientModules_Shop_fnc_open;", _id];
      _code = compile _code;
      _array pushBack [
            [format["SHOP_BASIC_%1", _forEachIndex], _name, "", _code,{true},{},"","screenloc",3],
            ["class", [_class, 0, ["ACE_MainActions"]]]
      ];
} forEach _basic;
_array call Client_fnc_addAction;
