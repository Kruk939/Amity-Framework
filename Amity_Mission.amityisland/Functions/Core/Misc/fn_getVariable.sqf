params[["_object", objNull], ["_name", ""], ["_default", ""], ["_target", objNull]];
waitUntil{!amity_var_getVariable_receiving}; //wait for last call to finish
amity_var_getVariable_receiving = true;
[_object, _name, _default, player] remoteExec ["Client_fnc_getVariableSend", _target];
waitUntil{!amity_var_getVariable_receiving};
private _received = amity_var_getVariable_lastReceived;
_received;
