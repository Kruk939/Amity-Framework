params[["_receiver", ""], ["_callGroup", []], ["_player", objNull], ["_freq", ""]];
if(_receiver == "" || isNull _player) exitWith {};
private _target = [_receiver] call ClientModules_Phone_fnc_getPlayerByNumber;
if(isNull _target) then {
      //get faction player

};
private _array = [_receiver, _callGroup, _player, _freq, _target];

if(isNull _target) then {
      //target not found
      ["onCallPlayerFoundFailed", _array] remoteExec ['Client_fnc_eventCall', _player];
} else {
      ["onCalling", _array] remoteExec ['Client_fnc_eventCall', _target];
      ["onCallPlayerFound", _array] remoteExec ['Client_fnc_eventCall', _player];
};
