params[["_target", objNull]];
if(isNull _target) exitWith {};
private _faction_id = player getVariable["faction_id", -1];
if(_faction_id == -1) exitWith {};
private _target_id = _target getVariable["profile_id", -1];
[_faction_id, _target_id] remoteExec["Server_fnc_factionAddMember", 2];
["Member was added to faction", true] call Client_fnc_domsg;
