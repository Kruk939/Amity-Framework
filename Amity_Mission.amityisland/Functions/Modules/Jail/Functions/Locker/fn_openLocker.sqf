params[["_target", objNull], ["_profile_id", -1]];
if(_target getVariable["locker_open", false]) exitWith { false; };
if(_profile_id == -1) then {
      _profile_id = player getVariable["profile_id", -1];
};
if(isNull _target) then {
      _target = [] call ClientModules_Jail_fnc_findLocker;
};
if(_profile_id == -1 || isNull _target) exitWith { false; };
private _jail = [_target] call ClientModules_Jail_fnc_jail_getNearest;
[_target, _profile_id, getNumber(_jail >> "id")] remoteExec ["ServerModules_Jail_fnc_openLocker", 2];
true;
