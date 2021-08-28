params[["_id", -1], ["_player", objNull], ["_function", ""]];
private _vehicle = [];
if(_id == -1) exitWith { _vehicle; };
_vehicle = [format["core_garage_get_id:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
if((count _vehicle) != 0) then {
      _vehicle = _vehicle select 0;
};
if(!isNull _player && _function != "") exitWith {
      _vehicle remoteExecCall [_function, _player];
};
_vehicle;
