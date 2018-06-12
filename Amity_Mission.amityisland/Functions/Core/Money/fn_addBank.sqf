params[["_amount", 0],"_bankaccount"];
//if(_amount < 0) then { _amount = 0 - _amount; };
[player, 1, _amount,_bankaccount] remoteExecCall ["Server_fnc_handleBank", 2];
