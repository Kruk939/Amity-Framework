if(!amity_var_inited) exitWith {}; //not received
params[["_monit", false]];
private _thirst = player getVariable["thirst", 0];
private _hunger = player getVariable["hunger", 0];
[player, [_thirst, _hunger]] remoteExecCall ["Server_fnc_saveProfile", 2];


//do something here to save
["onSave", [player]] call Client_fnc_eventCall;

if(_monit) then {
      ["You have been syncronized", true] call Client_fnc_domsg;
};
