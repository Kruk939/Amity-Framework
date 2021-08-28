params[["_faction_id", -1], ["_profile_id", -1]];
if(_faction_id == -1 || _profile_id == -1) exitWith {};
private _query = format["core_faction_change_owner:%1:%2", _faction_id, _profile_id];
[_query, 2] call ExternalS_fnc_ExtDBasync;
