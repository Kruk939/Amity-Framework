amity_var_profile_creating = false;
amity_var_profile_choose = false;
amity_var_map_center = [3996.68,4060.04,0.00143909];
[player] remoteExec ["Server_fnc_initPlayer", 2];

private _time = time;
waitUntil{amity_var_profile_creating || amity_var_profile_choose || (time - _time > 10)};
while{amity_var_profile_creating || amity_var_profile_choose} do {
      uiSleep 0.5;
};
uiSleep 2.5;
if(!amity_var_inited) exitWith {
      [] spawn Client_fnc_init;
};
cutText ["","plain",1];
