private _vehicles = [];
private _places = getArray(missionConfigFile >> "TowParking" >> "places");
private _in_parking_spot_fnc = {
      params[["_vehicle", objNull]];
      private _ret = false;
      if(isNull _vehicle) exitWith { _ret; };
      {
            _x params["_pos", "_distance"];
            if((_vehicle distance2D _pos) <= _distance) exitWith {
                  _ret = true;
            };
      } forEach _places;
      _ret;
};

{
      if(_x getVariable["amity_remove", false] && _x isKindOf "Car" && [_x] call _in_parking_spot_fnc) then {
            _vehicles pushBack _x;
      };
} forEach vehicles;
_vehicles;
