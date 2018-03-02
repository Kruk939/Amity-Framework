params[["_amount", 0],"_bankaccount"];
//if(_amount < 0) then { _amount = 0 - _amount; };
[player, 0, _amount,_bankaccount] remoteExec ["Server_fnc_handleBank", 2];
