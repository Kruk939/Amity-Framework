private _array = [
      [
		["VEHICLES_VEHICLE","Vehicle", "", {},{(_target isKindOf 'Car' || _target isKindOf 'AIR' || _target isKindOf 'SHIP') && (_target in amity_var_vehicles)  && (player distance _target) <= 10 && !(player getVariable["Ace_captives_isHandcuffed", false]) && !(player getVariable["Ace_captives_isZiptied", false]) && !(player getVariable["Ace_captives_isSurrendering", false])}],
		["class",["AllVehicles", 0, ["ACE_MainActions"],true]]
	],
      [
		["VEHICLES_VEHICLE_STORE","Store", "", {[_target] remoteExecCall ["Server_fnc_storeVehicle", 2]},{_objects = nearestObjects [player, ["openrp_vendor_garage","openrp_vendor_PDgarage","openrp_vendor_EMSgarage","openrp_vendor_carshop"], 15]; (count _objects) != 0}],
		["class",["AllVehicles", 0, ["ACE_MainActions", "VEHICLES_VEHICLE"],true]]
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
