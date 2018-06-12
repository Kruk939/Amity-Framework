params[["_id", -1], ["_player", objNull], ["_function", ""]];
if(_id == -1) exitWith {};
private _faction = [format["core_faction_get_id:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
if((count _faction) != 0) then {
      _faction = _faction select 0;
};
if(!isNull _player && _function != "") exitWith {
      _faction remoteExecCall [_function, _player];
};
_faction;
