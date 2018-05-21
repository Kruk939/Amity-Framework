params[["_id", -1], ["_player", objNull], ["_function", ""]];
if(_id == -1) exitWith {[];};
private _member = [format["faction_member_get:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
if((count _member) != 0) then {
      _member = _member select 0;
};
if(!isNull _player && _function != "") exitWith {
      _member remoteExec [_function, _player];
};
_member;
