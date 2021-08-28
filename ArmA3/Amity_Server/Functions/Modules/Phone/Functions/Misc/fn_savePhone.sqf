params[["_phone_id", -1], ["_ringtone", -1], ["_frame", -1], ["_background", -1]];

if(_phone_id == -1 || _ringtone == -1 || _frame == -1 || _background == 1) exitWith {};
private _query = format["phone_update_contact:%1:%2:%3:%4",_phone_id, _ringtone, _frame, _background];
[0, _query] call ExternalS_fnc_ExtDBquery;
