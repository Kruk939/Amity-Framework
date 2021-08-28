params[["_id", -1], ["_percentage", -1], ["_player", objNull]];
if(_id == -1 && _percentage < 0) exitWith {};
private _tax = [_id] call ClientModules_Taxes_fnc_get;
if(count _tax == 0) exitWith {};

private _previous = _tax select 1;
_tax set[1, _percentage];

[format["taxes_update_id:%1", _id, _percentage], 2] call ExternalS_fnc_ExtDBasync;
publicVariable "taxes_var_all";

if(!isNull _player) then {
      private _name = _player getVariable["name", ""];
      [["%1 has changed tax(%2) from %3 to %4", _name, (_tax select 2), _previous, _percentage], true] remoteExecCall["Client_fnc_domsg", -2];
};
