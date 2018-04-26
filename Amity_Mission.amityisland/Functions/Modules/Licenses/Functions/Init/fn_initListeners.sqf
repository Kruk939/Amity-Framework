["onLicenseRevoke", "ClientModules_Licenses_fnc_removeLicense"] call Client_fnc_eventAdd;
["onLicenseRevoke", "ClientModules_Licenses_fnc_getLicense"] call Client_fnc_eventAdd;

private _onLoad = {
      private _faction_id = player getVariable["faction_id", -1];
      if(_faction_id == -1) exitWith {};
      [_faction_id, player, "ClientModules_Licenses_fnc_receiveFaction"] remoteExec["ServerModules_Licenses_fnc_loadFaction", 2];
};
private _unLoad = {
      licenses_var_faction = [];
};
["onFactionWorkingStart", _onLoad] call Client_fnc_eventAdd;
["onFactionWorkingChange", _onLoad] call Client_fnc_eventAdd;
["onFactionWorkingStop", _unLoad] call Client_fnc_eventAdd;
