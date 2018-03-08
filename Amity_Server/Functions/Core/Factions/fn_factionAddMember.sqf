params[["_faction_id", -1], ["_profile_id", -1]];
if(_faction_id == -1 || _profile_id == -1) exitWith {};

private _query = format["faction_members_insert:%1:%2", _faction_id, _profile_id];
[0, _query] call ExternalS_fnc_ExtDBquery;
