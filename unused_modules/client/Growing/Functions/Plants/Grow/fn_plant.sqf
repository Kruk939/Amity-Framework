if(isNull Growing_var_attached) exitWith {};

private _config = [typeOf Growing_var_attached, "plant"] call ClientModules_Growing_fnc_plant_getConfig;
if(isNull _config) exitWith {detach Growing_var_attached; deleteVehicle Growing_var_attached; Growing_var_attached = objNull;};

//checking surface
private _surface = getText(_config >> "surface");
if(_surface != "" && (surfaceType (position player) != _surface)) exitWith { ["STR_Growing_PLANT_NO_GOOD_SURFACE", true] call Client_fnc_domsg; };

//checking equipment
private _good = true;
private _equipment = getArray(_config >> "equipment");
{
      _x params["_class", "_distance", "_msg"];
      if( count (nearestObjects [player, [_class], _distance]) == 0) exitWith {
            _good = false;
            [_msg, true] call Client_fnc_domsg;
      };
} forEach _equipment;
if(!_good) exitWith {};

//checking proximity
private _proximity = getNumber(missionConfigFile >> "Growing" >> "Config" >> "proximity");
private _plants = [] call ClientModules_Growing_fnc_plant_getConfigs;
{
      private _plant = getText(_x >> "plant");
      if(count (nearestObjects [player, [_plant], _proximity]) > 1) exitWith {
            _good = false;
            ["STR_Growing_PLANT_TOO_CLOSE", true] call Client_fnc_domsg;
      };
} forEach _plants;
if(!_good) exitWith {};

//checking position from config
_good = false;
private _positions = getArray(_config >> "positions");
{
      _x params["_pos", "_distance"];
      if((player distance _pos) <= _distance) exitWith { _good = true; ["STR_Growing_NO_GOOD_POSITION", true] call Client_fnc_domsg; };
} forEach _positions;
if(_good) exitWith {};
_good = true;

//detaching
private _plant = Growing_var_attached;
detach _plant;
_plant allowDamage false;
Growing_var_attached = objNull;
Growing_var_plant_variable = "";

//setting variables
_plant setVariable["ready", false];
_plant setVariable["quality", 0];
_plant setVariable["growing", true, true];
private _vars = getArray(_config >> "Growing" >> "variables");
{
      _x params["_name", "_value", ["_public", 0]];
      _plant setVariable[_name, _value, _public == 1];
} forEach _vars;
Growing_var_plants pushBack _plant;
private _function = getText(_config >> "Grow" >> "Functions" >> "plant");
if(!isNil _function && _function != "") then {
      [_plant] spawn (call compile _function);
} else {
      [_plant] spawn ClientModules_Growing_fnc_plant_grow;
};
