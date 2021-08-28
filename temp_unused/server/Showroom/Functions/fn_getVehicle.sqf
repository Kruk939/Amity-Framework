params[["_id", -1]];
private _ret = [];
if(_id == -1) exitWith { _ret; };
private _found = false;
private _arr = [showroom_var_vehicles_car, showroom_var_vehicles_ship, showroom_var_vehicles_air];
{
      private _vehicles = _x;
      {
            if((_x select 0) == _id) exitWith {
                  _ret = _x;
                  _found = true;
            };
      } forEach _vehicles;
      if(_found) exitWith {};
} forEach _arr;

if(!_found) then {
      private _arr = [showroom_var_vehicles_faction_car, showroom_var_vehicles_faction_ship, showroom_var_vehicles_faction_air];
      {
            private _a = _x;
            {
                  private _vehicles = _x select 1;
                  {
                        if((_x select 0) == _id) exitWith {
                              _ret = _x;
                              _found = true;
                        };
                  } forEach _vehicles;
                  if(_found) exitWith {};
            } forEach _a;
            if(_found) exitWith {};
      } forEach _arr;
};
_ret;
