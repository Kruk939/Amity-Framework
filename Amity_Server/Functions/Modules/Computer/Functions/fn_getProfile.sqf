params[["_profile_id", -1], ["_player", objNull], ["_function", ""]];
if(_profile_id == -1) exitWith { []; };

private _licenses = [];
if(!isNil "ServerModules_Licenses_fnc_loadProfile") then {
      _licenses = [_profile_id] call ServerModules_Licenses_fnc_loadProfile;
};
private _profile = [format["core_get_profile_id:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync;
if(count _profile != 0) then {
      _profile = _profile select 0;
};
private _wanted =  [format["computer_select_wanted_profiles_profile:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync;
private _vehicles = [format["core_garage_get_profile_all:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync;
private _sentences = [];
if(!isNil "ServerModules_Jail_fnc_getSentences") then {
      _sentences = [_profile_id, true] call ServerModules_Jail_fnc_getSentences;
};
private _tickets = [];
if(!isNil "ServerModules_Ticket_fnc_getTicketsPlayer") then {
      _tickets = [_profile_id] call ServerModules_Ticket_fnc_getTicketsPlayer;
};
private _houses = [];


if(!isNull _player && _function != "") exitWith {
      [_profile, _vehicles, _wanted, _licenses, _sentences, _tickets, count _houses] remoteExec[_function, _player];
};
[_profile, _vehicles, _wanted, _licenses, _sentences, _tickets, count _houses];
