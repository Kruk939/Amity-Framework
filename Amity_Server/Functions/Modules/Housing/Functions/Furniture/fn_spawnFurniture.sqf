params[["_house_id", -1], ["_furniture_id", -1]];
if(_house_id == -1 || _furniture_id == -1) exitWith {};
if([_furniture_id] call ServerModules_Housing_fnc_isSpawned) exitWith {};
private _h_data = [_house_id] call ServerModules_Housing_fnc_getHouseID;
if((count _h_data) == 0) exitWith {};

_h_data params["", "", "", "", "", "", "_furns"];
private _furn = [];
{
      if((_x select 0) == _furniture_id) exitWith {
            _furn = _x;
      };
} forEach _furns;
if((count _furn) == 0) exitWith {};
_furn params["_id", "_class", "_position", "_dir", "_is_cargo", "_cargo"];
private _obj = _class createVehicle [random(100), random(100), random(100) + 100];
_obj setPosATL _position;
_obj setDir _dir;
_obj setVariable["house_furniture_id", _id, true];
if(_is_cargo == 1) then {
      [_obj, _cargo] call Client_fnc_loadCargo;
};
housing_var_houses_spawned_furnitures pushBack _obj;
