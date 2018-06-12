params[["_account", ""], ["_player", objNull], ["_function", ""]];
if(_account == "") exitWith {};
private _bank = [format["core_bank_get_account:%1", _account], 2] call ExternalS_fnc_ExtDBasync;
if((count _bank) != 0) then {
      _bank = _bank select 0;
};
if(_function != "" && !isNull _player) exitWith {
      _bank remoteExecCall [_function, _player];
};
_bank;
