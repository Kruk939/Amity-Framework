params[["_id", -1], ["_timeLeft", -1]];
if(_id == -1) exitWith {};
private _active = if(_timeLeft <= 0) then { 0; } else { 1; };
[0, format["jail_update_sentence_id:%1:%2:%3", _id, _timeLeft, _active]] call ExternalS_fnc_ExtDBquery;
