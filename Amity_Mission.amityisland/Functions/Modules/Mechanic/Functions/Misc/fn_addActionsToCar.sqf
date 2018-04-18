params[["_vehicle", objNull]];
if(isNull _vehicle) exitWith {};
private _type = typeOf _vehicle;
private _array = [
	[
		["Mechanic_repair_Tyre_1","Change Tyre", "", {[_target, "HitLFWheel"] spawn ClientModules_Mechanic_fnc_repairVehicle;},{true},{},"",{_target selectionPosition ["wheel_1_1_steering", "HitPoints"]},3],
		["class",[_type, 0, []]]
	],
	[
		["Mechanic_repair_Tyre_2","Change Tyre", "", {[_target, "HitLF2Wheel"] spawn ClientModules_Mechanic_fnc_repairVehicle;},{true},{},"",{_target selectionPosition ["wheel_1_2_steering", "HitPoints"]},3],
		["class",[_type, 0, []]]
	],
	[
		["Mechanic_repair_Tyre_3","Change Tyre", "", {[_target, "HitRFWheel"] spawn ClientModules_Mechanic_fnc_repairVehicle;},{true},{},"",{_target selectionPosition ["wheel_2_1_steering", "HitPoints"]},3],
		["class",[_type, 0, []]]
	],
	[
		["Mechanic_repair_Tyre_4","Change Tyre", "", {[_target, "HitRF2Wheel"] spawn ClientModules_Mechanic_fnc_repairVehicle;},{true},{},"",{_target selectionPosition ["wheel_2_2_steering", "HitPoints"]},3],
		["class",[_type, 0, []]]
	]
 ];
_array call Client_fnc_addAction;
