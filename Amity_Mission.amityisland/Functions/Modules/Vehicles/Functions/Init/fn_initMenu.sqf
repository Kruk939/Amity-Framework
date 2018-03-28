private _array = [
      [
		["VEHICLES_VEHICLE","Vehicle", "", {},{(_target isKindOf 'Car' || _target isKindOf 'AIR' || _target isKindOf 'SHIP') && (_target in amity_var_vehicles)  && (player distance _target) <= 10 && !(player getVariable["Ace_captives_isHandcuffed", false]) && !(player getVariable["Ace_captives_isZiptied", false]) && !(player getVariable["Ace_captives_isSurrendering", false])}],
		["class",["AllVehicles", 0, ["ACE_MainActions"],true]]
	],
	[
		["VEHICLES_VEHICLE_SELF","Vehicle", "", {},{(_target isKindOf 'Car' || _target isKindOf 'AIR' || _target isKindOf 'SHIP') && _target in amity_var_vehicles && (player distance _target) <= 7 && !(player getVariable["Ace_captives_isHandcuffed", false]) && !(player getVariable["Ace_captives_isZiptied", false]) && !(player getVariable["Ace_captives_isSurrendering", false])}],
		["class",["Civilian", 1, ["ACE_SelfActions"],true]]
	],
	// Lock/Unlock vehicle
	[
		["VEHICLES_UNLOCK","Lock/Unlock", "", {[_target] call Client_fnc_lock;},{true}],
		["class",["AllVehicles", 0, ["ACE_MainActions","VEHICLES_VEHICLE"],true]]
	]
];
_array call Client_fnc_addAction;
