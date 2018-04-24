params["_unit", "_container"];
if((count _this) == 1) exitWith { false; };
private _handle = false;
diag_log format["InventoryOpened: %1", _this];

private _canOpen = {
	params[["_unit", player]];
	private _ret = true;
	_ret = switch(true) do {
		case (_unit getVariable ['tied',false]): { false; };
		case (_unit getVariable ['cuffed',false]): { false; };
		case ((animationstate player) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon'): { false; };
		case (UsableItems_var_protection != 0): { false; };
		default { true; };
	};
	_ret;
};
private _isVehicle = {
	params[["_container", objNull]];
	private _ret = false;
	_ret = switch(true) do {
		case (_container isKindOf "Car"): { true; };
		case (_container isKindOf "Ship"): { true; };
		case (_container isKindOf "Air"): { true; };
		case (_container isKindOf "LandVehicle"): { true; };
		case (_container isKindOf "MotorCycle"): { true; };
		default { false; };
	};
	_ret;
};

//is not restrained
if(!([_unit] call _canOpen)) exitwith {
	_handle = true;
	_handle;
};

private _isPack = getNumber(configFile >> "CfgVehicles" >> (typeOf _container) >> "isBackpack");
if(_isPack == 1) exitWith {
	_handle = true;
	_handle;
};

if(([_container] call _isVehicle) && {(locked _container) == 2}) exitWith {
	if(!(_container in amity_var_vehicles)) exitWith {
		hint "You can't open closed vehicle.";
		_handle = true;
		_handle;
	};
};

//cant open alive
if (_container isKindOf "Man" && !alive _container) exitWith {
   _handle = true;
   _handle;
};

[_handle] spawn {
	params["_handle"];
	uiSleep 0.05;
	waituntil {!(isnull (finddisplay 602)) || _handle };
	if(!_handle) then {
		((findDisplay 602) displayCtrl 638) ctrlSetEventHandler ["LBDblClick", "_this spawn ClientModules_UsableItems_fnc_useItem;"];
		((findDisplay 602) displayCtrl 633) ctrlSetEventHandler ["LBDblClick", "_this spawn ClientModules_UsableItems_fnc_useItem;"];
		((findDisplay 602) displayCtrl 640) ctrlSetEventHandler ["LBDblClick", "_this spawn ClientModules_UsableItems_fnc_useItem;"];
		((findDisplay 602) displayCtrl 619) ctrlSetEventHandler ["LBDblClick", "_this spawn ClientModules_UsableItems_fnc_useItem;"];
	};
};

[_handle] spawn {
	params["_handle"];
	waituntil {!(isnull (finddisplay 602)) || _handle };
	if(!_handle) then {
		for "_i" from 0 to 1 step 0 do {
			if(!isNull (findDisplay 49)) exitwith {
				closedialog 0;
				sleep 0.25;
				closedialog 0;
			};
			if(!isNull (findDisplay 602)) exitwith {};
			sleep 0.05;
		};
	};
};
