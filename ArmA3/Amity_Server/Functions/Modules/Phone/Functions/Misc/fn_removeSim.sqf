params[["_id", -1]];
if(_id == -1) exitWith {};
private _query = format["phone_delete_number_id:%1",_id];
[0, _query] call ExternalS_fnc_ExtDBquery;
