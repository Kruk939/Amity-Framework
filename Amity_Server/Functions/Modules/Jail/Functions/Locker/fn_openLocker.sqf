params[["_holder", objNull], ["_profile_id", -1], ["_jail_id", -1]];
if(isNull _holder || _profile_id == -1 || _jail_id == -1) exitWith {};
if(_holder getVariable["locker_open", false]) exitWith {};
[_holder] call Client_fnc_clearCargo;
private _id = -1;
_holder setVariable["locker_open", true, true];
_holder setVariable["locked", false, true];
_holder setVariable["profile_id", _profile_id, true];
_holder setVariable["jail_id", _jail_id];

private _query = format["jail_get_locker:%1:%2", _profile_id, _jail_id];
private _ret = [_query, 2] call ExternalS_fnc_ExtDBasync;
if(count _ret != 0) then {
      (_ret select 0) params["_i", "", "", "_items"];
      _id = _i;
      [_holder, _items] call Client_fnc_loadCargo;
};
_holder setVariable["id", _id];

[_holder, _profile_id] spawn {
      params["_holder", "_profile_id"];
      uiSleep getNumber(missionConfigFile >> "Jail" >> "Setup" >> "autoCloseLocker");
      if(isNull _holder) exitWith {};
      if(_profile_id != _holder getVariable["profile_id", -1]) exitWith {};
      if(!(_holder getVariable["locker_open", false])) exitWith {};
      [_holder] call ServerModules_Jail_fnc_closeLocker;
};
