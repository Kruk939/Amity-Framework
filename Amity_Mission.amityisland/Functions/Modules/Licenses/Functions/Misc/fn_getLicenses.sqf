params[["_player", objNull], ["_function", ""]];
if(isNull _player || _function == "") exitWith {};
[licenses_var_profile, [player, player getVariable["first_name", ""], player getVariable["last_name", ""]]] remoteExec[_function, _player];
