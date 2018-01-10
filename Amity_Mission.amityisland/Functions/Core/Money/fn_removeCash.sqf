params[["_amount", 0]];
if(_amount < 0) then { _amount = 0 - _amount; };
[player, 0, _amount] remoteExec ["Server_fnc_handleCash", 2];
