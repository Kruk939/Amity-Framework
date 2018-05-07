private _array = [
      [
		["TOW_PARKING_STORE",localize "STR_TOW_PARKING_IMPUND", "", { [_target] call ClientModules_TowParking_fnc_store; },{ ((player getVariable ["module_towtruck", -1]) != -1) && _target getVariable["amity_remove", false] && (_target IN ([] call ClientModules_TowParking_fnc_getNearest))}],
		["class",["AllVehicles", 0, ["ACE_MainActions"],true]]
	],
      [
		["TOW_PARKING_SET_FOR_IMPOUND",localize "STR_TOW_PARKING_IMPUND", "", { [_target] call ClientModules_TowParking_fnc_impound; }, { !(_target getVariable["amity_remove", false]) && (((player getVariable ["module_towtruck_set_impound", -1]) != -1) || _target IN amity_var_vehicles) }],
		["class",["AllVehicles", 0, ["ACE_MainActions"],true]]
	],
      [
		["TOW_PARKING_UNSET_FOR_IMPOUND",localize "STR_TOW_PARKING_IMPUND", "", { _target setVariable["amity_remove", nil, true]; ["STR_TOW_PARKING_UNSET_FOR_IMPOUND", true] call Client_fnc_domsg; },{ (_target getVariable["amity_remove", false]) && (((player getVariable ["module_towtruck_set_impound", -1]) != -1) || _target IN amity_var_vehicles) }],
		["class",["AllVehicles", 0, ["ACE_MainActions"],true]]
	]
];
_array call Client_fnc_addAction;
