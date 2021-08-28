private _array = [
      [
            ["Mechanic_repair", localize "STR_MECHANIC", "", {true}, {(_target isKindOf 'Car' || _target isKindOf 'AIR' || _target isKindOf 'SHIP')}],
            ["class",["AllVehicles", 0, ["ACE_MainActions"], true]]
      ],
      [
            ["Mechanic_repair_engine", localize "STR_MECHANIC_FIX_ENGINE", "", {[_target, "engine"] spawn ClientModules_Mechanic_fnc_repairVehicle;},{true},{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
      [
            ["Mechanic_repair_Fuel", localize "STR_MECHANIC_FIX_FUEL_TANK", "", {[_target, "fuelTank"] spawn ClientModules_Mechanic_fnc_repairVehicle;},{true},{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
      [
            ["Mechanic_repair_Hull", localize "STR_MECHANIC_FIX_HULL", "", {[_target, "hull"] spawn ClientModules_Mechanic_fnc_repairVehicle;},{true},{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
      [
            ["Mechanic_repair_Glass", localize "STR_MECHANIC_FIX_FGLASS", "", {[_target, "glass"] spawn ClientModules_Mechanic_fnc_repairVehicle;},{true},{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
      [
            ["Mechanic_repair_Fullfix", localize "STR_MECHANIC_FIX_VEHICLE", "", {[_target] spawn ClientModules_Mechanic_fnc_fullrepair;},{(player getVariable ["module_mechanic", 0]) != 0},{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
      [
            ["Mechanic_repair_Fuel", localize "STR_MECHANIC_REFUEL", "", {[_target] spawn ClientModules_Mechanic_fnc_fuelVehicle;},{([getText(missionConfigFile >> "Mechanic" >> "Items" >> "fuelCanister")] call Client_fnc_countItems) > 0 },{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
      [
            ["Mechanic_repair_Paint", localize "STR_MECHANIC_PAINT_JOB", "", {[_target] spawn ClientModules_Mechanic_fnc_paintjob_open;},{([getText(missionConfigFile >> "Mechanic" >> "PaintJob" >> "paintGun")] call Client_fnc_countItems) > 0 && (player getVariable ["module_mechanic", 0]) != 0},{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
	[
		["VEHICLES_VEHICLE_FLIP", localize "STR_MECHANIC_FLIP", "", {_target setpos (getposatl _target);},{(player getVariable ["module_mechanic", 0]) != 0 || _target IN amity_var_vehicles}],
		["class",["AllVehicles", 0, ["ACE_MainActions","Mechanic_repair"],true]]
	],
	[
		["VEHICLES_VEHICLE_PUSH", localize "STR_MECHANIC_PUSH", "", {[_target] spawn ClientModules_Mechanic_fnc_pushVehicle;},{(player getVariable ["module_mechanic", 0]) != 0 || _target IN amity_var_vehicles}],
		["class",["AllVehicles", 0, ["ACE_MainActions","Mechanic_repair"],true]]
	]
 ];
_array call Client_fnc_addAction;
{
      if(_x isKindOf "CAR") then {
            [_x] call ClientModules_Mechanic_fnc_addActionsToCar;
      };
} foreach vehicles;
