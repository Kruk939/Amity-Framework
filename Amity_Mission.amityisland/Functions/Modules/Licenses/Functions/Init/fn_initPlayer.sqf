private _profile_id = player getVariable["profile_id", -1];
[_profile_id, player, "ClientModules_Licenses_fnc_receive"] remoteExec["ServerModules_Licenses_fnc_loadProfile", 2];
