if(!hasInterface) exitWith {};
amity_var_inited = false;
waitUntil {!(isNil {player}) && player == player && alive player};
400 cutRsc ["HUDLoading","PLAIN"];
cutText ["","BLACK",1];
[player] remoteExec ["Server_fnc_initPlayer", 2];

400 cutfadeout 1;
cutText ["","plain",1];
