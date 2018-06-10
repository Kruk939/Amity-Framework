private _start = {
      private _faction_id = player getVariable["faction_id", -1];
      if(_faction_id == -1) exitWith { [] call ClientModules_FactionVariables_fnc_unloadVariables; };
      [] call ClientModules_FactionVariables_fnc_unloadVariables;
      [_faction_id, player, "ClientModules_FactionVariables_fnc_loadVariables"] remoteExec ["ServerModules_FactionVariables_fnc_getFaction", 2];
};
private _stop = { [] call ClientModules_FactionVariables_fnc_unloadVariables; };
["onFactionWorkingStart", _start] call Client_fnc_eventAdd;
["onFactionWorkingChange", _start] call Client_fnc_eventAdd;
["onFactionWorkingStop", _stop] call Client_fnc_eventAdd;
