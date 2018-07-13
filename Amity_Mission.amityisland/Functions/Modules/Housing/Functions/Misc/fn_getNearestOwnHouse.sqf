params[["_distance", 50]];

private _types = [];
{
      _types pushBack (_x select 1);
} forEach housing_var_types;

private _houses = nearestObjects [[0,0,0], _types, _distance];
private _profile_id = player getVariable["profile_id", -1];
private _faction_id = player getVariable["faction_id", -2];
if(_faction_id != -2) then {
      if(!(["house_view"] call Client_fnc_checkPermission)) then {
            _faction_id = -2;
      };
};
private _ret = objNull;
if(count _houses != 0) then {
      {
            if((_x getVariable["house_faction_id", -1]) == _faction_id || (_x getVariable["house_profile_id", -1]) == _profile_id) exitWith {
                  _ret = _x;
            };
      } forEach _houses;
};
_ret;
