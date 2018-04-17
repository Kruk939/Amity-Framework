params[["_id", -1], ["_name", ""], ["_number", ""]];
if(_id == -1 || _name == "" || _number == "") exitWith {};

private _query = format["phone_update_contact:%1:%2:%3",_id, _name, _number];
[0, _query] call ExternalS_fnc_ExtDBquery;
