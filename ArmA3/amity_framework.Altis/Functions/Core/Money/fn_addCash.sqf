params[["_amount", 0]];
if(_amount < 0) then { _amount = 0 - _amount; };
[player, "ADD", _amount] remoteExecCall ["Server_fnc_handleCash", 2];