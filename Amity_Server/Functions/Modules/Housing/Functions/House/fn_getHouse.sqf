params[["_house", objNull], ["_player", objNull], ["_function", ""]];
private _ret = [];
if(isNull _house) exitWith { _ret; };
private _id = _house getVariable ["house_id", -1];
if(_id == -1) exitWith { _ret; };
private _ret = [_id] call ServerModules_Housing_fnc_getHouseID;
if(!isNull _player && _function != "") exitWith {
      [_ret] remoteExecCall[_function, _player];
};
_ret;
