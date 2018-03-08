params[["_id", -1], ["_player", objNull], ["_function", ""]];
if(_id == -1) exitWith {};
private _bank = [format["core_bank_get_id:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
if((count _bank) != 0) then {
      _bank = _bank select 0;
};
if(_function != "" && !isNull _player) exitWith {
      _bank remoteExec [_function, _player];
};
_bank;
