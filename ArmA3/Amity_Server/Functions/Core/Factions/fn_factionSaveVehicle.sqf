params[["_id", -1], ["_profile_id", -1], ["_access_level", 0]];
if(_id == -1) exitWith {};
if(_profile_id == -1) then { _profile_id = ""; };
if(_access_level == 0) then { _access_level = ""; };
private _query = format["core_garage_faction_update:%1:%2:%3", _id, _profile_id, _access_level];
[_query, 2] call ExternalS_fnc_ExtDBasync;
