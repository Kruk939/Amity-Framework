params["_loc", ["_inside", true]];
private _jail = configNull;
if(isNil "_loc") exitWith { _jail; };
private _jails = [] call ClientModules_Jail_fnc_jail_getConfigs;
private _minDistance = 99999999999999;
{
      private _location = getArray(_x >> "Locations" >> "position");
      private _distance = getNumber(_x >> "Locations" >> "radius");
      private _dist = _loc distance2D _location;
      if(_dist < _minDistance) then {
            _minDistance = _dist;
            if(!_inside || (_dist < _distance)) exitWith {
                  _jail = _x;
            };
      };
} forEach _jails;
_jail;
