params[["_id", -1], ["_balance", -1]];
if(_id == -1 || _balance == 1) exitWith {};
private _query = format["phone_update_number_balance:%1:%2",_id, _balance];
[0, _query] call ExternalS_fnc_ExtDBquery;
