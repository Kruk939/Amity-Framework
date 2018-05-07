params[["_variable", ""]];
if(!isNull amity_var_attachedVehicle) exitWith { false; };
if(_variable == "") then {
      _variable = player getVariable["public_job", ""];
};
if(_variable == "") exitWith { false; };
private _config = [_variable] call ClientModules_PublicJobs_fnc_getConfig;
if(isNull _config) exitWith { false; };
private _can = true;

//checking time
if(time - public_jobs_var_lastVehicle <= getNumber(missionConfigFile >> "PublicJobs" >> "Config" >> "vehicleSpawnDelay")) then {
      private _time = getNumber(missionConfigFile >> "PublicJobs" >> "Config" >> "vehicleSpawnDelay") - time + public_jobs_var_lastVehicle;
      [["STR_PUBLIC_JOBS_VEHICLE_TIME", _time], true] call Client_fnc_domsg;
      _can = false;
};

//checking existance
if((!isNull public_jobs_var_vehicle) && _can) then {
      _can = [public_jobs_var_vehicle] call ClientModules_PublicJobs_fnc_removeVehicle;
      if(!_can) then {
            ["STR_PUBLIC_JOBS_VEHICLE_CANT_REMOVE", true] call Client_fnc_domsg;
      };
};

if(_can) then {
      _config = _config >> "Vehicle";
      private _class = getText(_config >> "vehicleClass");
      if(_class != "") then {
            private _vehicle = _class createVehicle [492.124,356.297,0.0019784];
            clearWeaponCargoGlobal _vehicle;
            clearMagazineCargoGlobal _vehicle;
            clearItemCargoGlobal _vehicle;
            clearBackpackCargoGlobal _vehicle;
            [_vehicle] call Client_fnc_attachVehicle;
            _vehicle setOwner 2;
            if(!isNil "ClientModules_Mechanic_fnc_addActionsToCar") then {
                  [_vehicle] remoteExec["ClientModules_Mechanic_fnc_addActionsToCar", -2];
            };
            private _variables = getArray(_config >> "variables");
            {
                  _x params["_name", "_value", ["_public", 0], ["_type", ""]];
                  _vehicle setVariable[_name, if(_type == "BOOL") then { (_value == 1) } else { _value }, (_public == 1)];
            } forEach _variables;
            private _items = getArray(_config >> "Items" >> "items");
            {
                  _x params["_name", "_count"];
                  _vehicle addItemCargo[_name, _count];
            } forEach _items;
            private _backpack = (getText(_config >> "Items" >> "backpack"));
            if(_backpack != "") then { _vehicle addBackpackCargo[_backpack, 1]; };
            amity_var_vehicles pushBack _vehicle;
            public_jobs_var_vehicle = _vehicle;
            public_jobs_var_lastVehicle = time;
      } else {
            _can = false;
      };
};
_can;
