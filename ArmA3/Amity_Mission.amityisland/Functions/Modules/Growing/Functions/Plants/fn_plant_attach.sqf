params[["_var", ""]];
if(_var == "" || !isNull Growing_var_attached) exitWith {};

//removing nulls form array
private _toRemove = [];
{
      if(isNull _x) then {
            _toRemove pushBack _forEachIndex;
      };
} forEach Growing_var_plants;
private _c = count _toRemove;
for [{}, {_c >= 0}, {_c = _c - 1}] do {
    Growing_var_plants deleteAt (_toRemove select _c);
};

//checking max plants
if((count Growing_var_plants) >= getNumber(missionConfigFile >> "Growing" >> "Config" >> "maxPlants")) exitWith { ["Too many plants", true] call Client_fnc_domsg; detach Growing_var_attached; deleteVehicle Growing_var_attached; Growing_var_attached = objNull;};

//checking config file
private _config = [_var] call ClientModules_Growing_fnc_plant_getConfig;
if(isNull _config) exitWith {};
private _seed = getText(_config >> "seed");
private _plant = getText(_config >> "plant");
if(_plant == "") exitWith {};
if(_seed != "" && ([_seed] call Client_fnc_countItems) == 0) exitWith {};

Growing_var_attached = createVehicle [_plant, [0,0,0], [], 0, "NONE"];
Growing_var_attached attachTo [player, getArray(_config >> "attach")];
player removeItem _seed;
