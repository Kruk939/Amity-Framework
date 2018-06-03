private _array = [
      [
		["LOCKPICKING_LOCKPICK",localize "STR_LOCKPICKING_LOCPICK", "", { [_target] call ClientModules_Lockpicking_fnc_lockpickCar; },{(locked _target != 0) && (_target isKindOf 'Car' || _target isKindOf 'AIR' || _target isKindOf 'SHIP') && !(_target in amity_var_vehicles)  && (player distance _target) <= 10 && !(player getVariable["Ace_captives_isHandcuffed", false]) && !(player getVariable["Ace_captives_isZiptied", false]) && !(player getVariable["Ace_captives_isSurrendering", false])}],
		["class",["AllVehicles", 0, ["ACE_MainActions"],true]]
	],
      [
		["LOCKPICKING_LOCKPICK_HOLDER", localize "STR_LOCKPICKING_LOCPICK", "", {[_target] call ClientModules_Lockpicking_fnc_lockpickHolder; },{_target getVariable["locked", false]}],
		["class",["ThingX", 0, ["ARP_OBJECT_MENU"],true]]
	]
];
_array call Client_fnc_addAction;
