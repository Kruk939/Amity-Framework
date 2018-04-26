params[["_profile_id", -1], ["_license_id", -1]];
if(_profile_id == -1 || _license_id == -1) exitWith {};
[0, format["licenses_delete_old:%1:%2", _license_id, _profile_id]] call ExternalS_fnc_ExtDBquery;
private _player = [_profile_id] call Client_fnc_getPlayerByProfile;
if(!isNull _player) then {
      ["onLicenseRevoke", [_profile_id, _license_id]] remoteExec ["Client_fnc_eventCall", _player];
};
