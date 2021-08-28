params[["_id", -1], ["_access_level", 1], ["_salary", 0], ["_desc", ""]];
if(_id == -1) exitWith {};
private _query = format["faction_members_update:%1:%2:%3:%4", _id, _access_level, _salary, _desc];
[_query, 2] call ExternalS_fnc_ExtDBasync;
