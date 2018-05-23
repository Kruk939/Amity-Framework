params[["_id", -1], ["_player", objNull], ["_function", ""]];
if(_id == -1) exitWith { []; };
private _found = false;
private _profile_id = -1;
private _faction_id = -1;
private _profile = [];
private _faction = [];
private _vehicle = [];
private _cases = [];

_vehicle = [format["core_garage_get_id:%1", _id], 2] call ExternalS_fnc_ExtDBasync;
if(count _vehicle != 0) then {
      _vehicle = _vehicle select 0;
      if(typeName (_vehicle select 1) != "OBJECT") then {
            _profile_id = _vehicle select 1;
      };
      if(typeName (_vehicle select 2) != "OBJECT") then {
            _faction_id = _vehicle select 2;
      };
      _found = true;
};
if(_found) then {
      if(_profile_id != -1) then {
            _profile = [format["core_get_profile_id:%1", _profile_id], 2] call ExternalS_fnc_ExtDBasync;
            if(count _profile != 0) then {
                  _profile = _profile select 0;
            };
      };
      if(_faction_id != -1) then {
            _faction = [format["core_faction_get_id:%1", _faction_id], 2] call ExternalS_fnc_ExtDBasync;
            if(count _faction != 0) then {
                  _faction = _faction select 0;
            };
      };
      _cases = [format["computer_select_wanted_vehicles_garage_id:%1", _vehicle select 0], 2] call ExternalS_fnc_ExtDBasync;
};

if(!isNull _player && _function != "") exitWith {
      [_vehicle, _cases, _profile, _faction] remoteExec[_function, _player];
};
[_vehicle, _cases, _profile, _faction];
