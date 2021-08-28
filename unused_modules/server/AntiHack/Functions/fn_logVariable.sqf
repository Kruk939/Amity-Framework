params[["_variable", ""], ["_player", objNull]];
if(isNull _player) exitWith {};
private _user_id = _player getVariable["core_user_id", -1];
if(_user_id == -1) then { _user_id = ""; };
[0, format["antihack_insert_log:%1:%2:%3", _user_id, getPlayerUID _player, _variable]] call ExternalS_fnc_ExtDBquery;
