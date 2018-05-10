private _spawn = {
      //params["_player", "_pos"];
      [player getVariable["profile_id", -1], false, player, "ClientModules_Jail_fnc_receive"] remoteExec["ServerModules_Jail_fnc_getSentences", 2];
};

["onSpawn", _spawn] call Client_fnc_eventAdd;
