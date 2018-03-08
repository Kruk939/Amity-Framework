params[["_faction_id", -1], ["_short_name", ""], ["_full_name", ""]];
if(_faction_id == -1) exitWith {};
private _query = format["core_faction_update:%1:%2:%3", _faction_id, _short_name, _full_name];
[_query, 2] call ExternalS_fnc_ExtDBasync;
