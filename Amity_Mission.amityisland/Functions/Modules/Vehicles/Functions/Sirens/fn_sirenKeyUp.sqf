params["", "_key", "", "", ""];

private _handled = false;
private _keyMan = getNumber(missionConfigFile >> "Vehicles" >> "Sirens" >> "Keys" >> "keyManual");
private _keySwitch = getNumber(missionConfigFile >> "Vehicles" >> "Sirens" >> "Keys" >> "keySwitch");
private _keyMode = getNumber(missionConfigFile >> "Vehicles" >> "Sirens" >> "Keys" >> "keyMode");
switch(_key)do{
	case _keyMan: {
		private _vehicle = vehicle player;
	      private _array = [_vehicle] call ClientModules_Vehicles_fnc_sirenGetArray;
		if(count _array == 0) exitWith {};
		if(Vehicles_var_sirens_mode_manual) then {
			[] call ClientModules_Vehicles_fnc_sirenDestroy;
		};
		Vehicles_var_sirens_free_key = true;
	};
	case _keyMode: {
		Vehicles_var_sirens_free_key =true;
	};
	case _keySwitch: {
		Vehicles_var_sirens_free_key = true;
	};
};

_handled;
