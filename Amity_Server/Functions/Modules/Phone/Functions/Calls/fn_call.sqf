params[["_receiver", ""], ["_callGroup", []], ["_player", objNull], ["_freq", ""]];
if(_receiver == "" || isNull _player) exitWith {};
private _target = [_receiver] call ClientModules_Phone_fnc_getPlayerByNumber;
if(isNull _target) then {
      {
            _x params["_id", "", "", "_n"];
            if(_n == _receiver) exitWith {
                  private _ret = [];
                  {
                        if(((_x getVariable ["phone_dispatch_id", -1]) == _id) && (_x getVariable["phone_current_freq", ""]) == "") then {
                              _ret pushBack _x;
                        };
                  } forEach allPlayers;
                  _target = _ret call BIS_fnc_selectRandom;
            };
      } forEach phone_var_faction_numbers;

};
private _array = [_receiver, _callGroup, _player, _freq, _target];

if(isNull _target) then {
      //target not found
      ["onCallPlayerFoundFailed", _array] remoteExec ['Client_fnc_eventCall', _player];
} else {
      ["onCalling", _array] remoteExec ['Client_fnc_eventCall', _target];
      ["onCallPlayerFound", _array] remoteExec ['Client_fnc_eventCall', _player];
};
