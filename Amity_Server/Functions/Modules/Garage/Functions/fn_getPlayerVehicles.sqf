params[["_player", objNull]];
if(isNull _player) exitWith {};
private _profile_id = _player getVariable["profile_id", -1];
if(_profile_id == -1) exitWith {};
private _toRemove = [];
private _ret = [];
{
      if(isNull _x) then {
            _toRemove pushBack _forEachIndex;
      } else {
            if(_x getVariable["profile_id", -1] == _profile_id) then {
                  _ret pushBack _x;
            };
      };
} forEach amity_var_vehicles;
[_ret] remoteExec ["ClientModules_Vehicles_fnc_receive", _player];

private _count = (count _toRemove) - 1;
for [{}, {_count >= 0}, {_count = _count - 1}] do {
    private _index = _toRemove select _count;
    amity_var_vehicles deleteAt _index;
};
