if(!amity_var_inited) exitWith {}; //not received

private _thirst = player getVariable["thirst", 0];
private _hunger = player getVariable["hunger", 0];
[player, [_thirst, _hunger]] remoteExec ["Server_fnc_saveProfile", 2];


//do something here to save
["onSave", [player]] call Client_fnc_eventCall;
