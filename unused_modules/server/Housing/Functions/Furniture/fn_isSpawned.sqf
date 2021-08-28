params["_furniture"];
if(typeName _furniture == "OBJECT") then { _furniture = _furniture getVariable["house_furniture_id", -1]};
if(_furniture == -1) exitWith { false; };
private _ret = false;
{
      if((_x getVariable["house_furniture_id", -1]) == _furniture) exitWith {
            _ret = true;
      };
} forEach housing_var_houses_spawned_furnitures;
_ret;
