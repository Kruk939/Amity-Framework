params[["_profile_id", -1], ["_license_id", -1], ["_description", ""], ["_days", 1], ["_faction_id", -1]];
if(_profile_id == -1 || _license_id == -1) exitWith { []; };
_days = [_license_id, _days] call ClientModules_Licenses_fnc_checkDays;
if(_faction_id == -1) then { _faction_id = ""; };
_description = (_description splitString ":") joinString "-";
private _query = format["licenses_insert_profile_license:%1:%2:%3:%4:%5", _profile_id, _license_id, _description, _days, _faction_id];
private _ret = ([_query, 2] call ExternalS_fnc_ExtDBasync) select 0;

private _player = [_profile_id] call Client_fnc_getPlayerByProfile;
if(!isNull _player) then {
      ["onLicenseGive", [_ret]] remoteExec ["Client_fnc_eventCall", _player];
};
_ret;
