params[["_player", objNull], ["_faction_id", -1], ["_message", ""]];
if(isNull _player) exitWith {};
if(_faction_id == -1) then { _faction_id = _player getVariable["faction_id", -1]; };
if(_faction_id == -1) exitWith {};
if(_message == "") exitWith {};

private _ret = [_faction_id] call ServerModules_Computer_fnc_getMessages;
if(count _ret == 0) then {
      computer_var_messages pushBack [_faction_id, [format["%1: %2",_player getVariable ["name", ""], _message]]];
} else {
      _ret pushBack (format["%1: %2",_player getVariable ["name", ""], _message]);
};
