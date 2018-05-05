player addEventHandler ["GetInMan", {
	_this call ClientModules_Taxi_fnc_enter;
}];
player addEventHandler ["GetOutMan", {
	_this call ClientModules_Taxi_fnc_exit;
}];
