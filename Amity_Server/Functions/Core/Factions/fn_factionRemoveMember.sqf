params[["_id", -1]];
if(_id == -1) exitWith {};
private _member = [_id] call Server_fnc_memberGet;
private _profile_id = _member select 2;
private _faction_id = _member select 1;
private _player = [_profile_id] call Client_fnc_getPlayerByProfile;
if(!isNull _player) then {
      if((_player getVariable["faction_id", -1] == _faction_id)) then {
            //kick him from the job

      };
};
private _query = format["faction_members_delete:%1", _id];
[0, _query] call ExternalS_fnc_ExtDBquery;
