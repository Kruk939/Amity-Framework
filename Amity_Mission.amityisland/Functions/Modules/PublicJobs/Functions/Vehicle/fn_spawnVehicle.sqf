params[["_variable", ""]];
private _config = [_variable] call ClientModules_PublicJobs_fnc_getConfig;
if(isNull _config) exitWith { false; };
private _can = true;

//checking time
if(time - public_jobs_var_lastVehicle <= getNumber(missionConfigFile >> "PublicJobs" >> "Config" >> "vehicleSpawnDelay")) then {
      _can = false;
};

//checking existance
if((!isNull public_jobs_var_vehicle) && _can) then {
      _can = [public_jobs_var_vehicle] call ClientModules_PublicJobs_fnc_removeVehicle;
};

if(_can) then {
      _config = _config >> "Vehicle";
      private _class = getText(_config >> "vehicleClass");
      if(_class != "") then {
            private _vehicle = _class createVehicle [492.124,356.297,0.0019784];
            [_vehicle] call Client_fnc_attachVehicle;
            private _variables = getArray(_config >> "variables");
            {
                  _x params["_name", "_value", ["_public", false]];
                  _vehicle setVariable[_name,_value,_public];
            } forEach _variables;
            private _items = getArray(_config >> "Items" >> "items");
            {
                  _x params["_name", "_count"];
                  _vehicle addItemCargo[_name, _count];
            } forEach _items;
            private _backpack = (getText(_config >> "Items" >> "backpack"));
            if(_backpack != "") then { _vehicle addBackpackCargo[_backpack, 1]; };
            amity_var_vehicles pushBack _vehicle;
      } else {
            _can = false;
      };
} else {

};
_can;
