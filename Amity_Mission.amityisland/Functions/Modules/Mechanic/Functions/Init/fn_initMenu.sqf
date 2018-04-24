private _array = [
      [
            ["Mechanic_repair","Mechanic", "", {true}, {(_target isKindOf 'Car' || _target isKindOf 'AIR' || _target isKindOf 'SHIP')}],
            ["class",["AllVehicles", 0, ["ACE_MainActions"], true]]
      ],
      [
            ["Mechanic_repair_engine","Fix Engine", "", {[_target, "engine"] spawn ClientModules_Mechanic_fnc_repairVehicle;},{true},{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
      [
            ["Mechanic_repair_Fuel","Fix Fuel Tank", "", {[_target, "fuelTank"] spawn ClientModules_Mechanic_fnc_repairVehicle;},{true},{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
      [
            ["Mechanic_repair_Hull","Fix Hull", "", {[_target, "hull"] spawn ClientModules_Mechanic_fnc_repairVehicle;},{true},{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
      [
            ["Mechanic_repair_Glass","Fix Glass", "", {[_target, "glass"] spawn ClientModules_Mechanic_fnc_repairVehicle;},{true},{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
      [
            ["Mechanic_repair_Fullfix","Fix Vehicle", "", {[_target] spawn ClientModules_Mechanic_fnc_fullrepair;},{(player getVariable ["module_mechanic", 0]) != 0},{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
      [
            ["Mechanic_repair_Fuel","Refuel Vehicle", "", {[_target] spawn ClientModules_Mechanic_fnc_fuelVehicle;},{([getText(missionConfigFile >> "Mechanic" >> "Items" >> "fuelCanister")] call Client_fnc_countItems) > 0 },{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ],
      [
            ["Mechanic_repair_Paint","Paint job", "", {[_target] spawn ClientModules_Mechanic_fnc_paintjob_open;},{([getText(missionConfigFile >> "Mechanic" >> "PaintJob" >> "paintGun")] call Client_fnc_countItems) > 0 && (player getVariable ["module_mechanic", 0]) != 0},{},"",{},3],
            ["class",["AllVehicles", 0, ["ACE_MainActions", "Mechanic_repair"], true]]
      ]
 ];
_array call Client_fnc_addAction;
{
      if(_x isKindOf "CAR") then {
            [_x] call ClientModules_Mechanic_fnc_addActionsToCar;
      };
} foreach vehicles;
