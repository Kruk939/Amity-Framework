params[["_object", objNull], ["_name", ""], ["_default", ""], ["_target", objNull]];
private _param = _object getVariable [_name, _default];
_param remoteExecCall ["Client_fnc_getVariableGet", _target];