params[["_player", objNull], ["_function", ""]];

private _wantedPersons = ["computer_select_wanted_profiles_open", 2] call ExternalS_fnc_ExtDBasync;
private _wantedVehicles = ["computer_select_wanted_vehicles_open", 2] call ExternalS_fnc_ExtDBasync;
private _messages = [_player getVariable["faction_id", -1]] call ServerModules_Computer_fnc_getMessages;

if(!isNull _player && _function != "") exitWith {
      [_wantedPersons, _wantedVehicles, _messages] remoteExec[_function, _player];
};
[_wantedPersons, _wantedVehicles, _messages];
