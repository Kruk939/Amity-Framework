params[["_force",false]];
private _time = getNumber(missionConfigFile >> "Medical" >> "Config" >> "SyncTime");
if (time - medical_lastUpdate < _time && !_force && medical_inited) exitWith {};
medical_lastUpdate = time;
[player, player getVariable ["ACE_medical_damage", 0], medical_deadPlayer, player getVariable ["ACE_medical_pain", 0], player getVariable["ace_medical_bodyPartStatus",[0,0,0,0,0,0]]] remoteExecCall ["ServerModules_ACE_fnc_update"];
