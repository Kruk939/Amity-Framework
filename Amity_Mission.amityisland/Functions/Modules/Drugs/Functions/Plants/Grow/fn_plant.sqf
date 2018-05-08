if(isNull Drugs_var_attached) exitWith {};

private _config = [typeOf Drugs_var_attached, "plant"] call ClientModules_Drugs_fnc_plant_getConfig;
if(isNull _config) exitWith {detach Drugs_var_attached; deleteVehicle Drugs_var_attached; Drugs_var_attached = objNull;};

//checking surface
private _surface = getText(_config >> "surface");
if(_surface != "" && (surfaceType (position player) != _surface)) exitWith { ["NOT good surface", true] call Client_fnc_domsg; };

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
private _proximity = getNumber(missionConfigFile >> "Drugs" >> "Config" >> "proximity");
private _plants = [] call ClientModules_Drugs_fnc_plant_getConfigs;
{
      private _plant = getText(_x >> "plant");
      if(count (nearestObjects [player, [_plant], _proximity]) > 1) exitWith {
            _good = false;
            ["TOO CLOSE", 2] call Client_fnc_domsg;
      };
} forEach _plants;
if(!_good) exitWith {};

//checking position from config
_good = false;
private _positions = getArray(_config >> "positions");
{
      _x params["_pos", "_distance"];
      if((player distance _pos) <= _distance) exitWith { _good = true; ["NOT ON POSITION", 2] call Client_fnc_domsg; };
} forEach _positions;
if(_good) exitWith {};
_good = true;

//detaching
private _plant = Drugs_var_attached;
detach _plant;
_plant allowDamage false;
Drugs_var_attached = objNull;
Drugs_var_plant_variable = "";

//setting variables
_plant setVariable["ready", false];
_plant setVariable["quality", 0];
_plant setVariable["growing", true, true];
private _vars = getArray(_config >> "Growing" >> "variables");
{
      _x params["_name", "_value", ["_public", 0]];
      _plant setVariable[_name, _value, _public == 1];
} forEach _vars;
Drugs_var_plants pushBack _plant;
private _function = getText(_config >> "Grow" >> "Functions" >> "plant");
if(!isNil _function && _function != "") then {
      [_plant] spawn (call compile _function);
} else {
      [_plant] spawn ClientModules_Drugs_fnc_plant_grow;
};
