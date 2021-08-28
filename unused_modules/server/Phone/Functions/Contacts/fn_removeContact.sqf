params[["_id", -1]];
if(_id == -1) exitWith {};
      
private _query = format["phone_remove_contact:%1",_id];
[0, _query] call ExternalS_fnc_ExtDBquery;
