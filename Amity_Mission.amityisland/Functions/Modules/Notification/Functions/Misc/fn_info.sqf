private _config = missionConfigFile >> "Notification";
private _tick = 0;
private _switch_time = 5;
private _switch = false;
private _tick_time = 0.5;
private _every_tick = _switch_time / _tick_time;
while{true} do {
      disableSerialization;
      private _display = uiNamespace getVariable["RscInfo", displayNull];
      if(isNull _display) then { (getNumber(_config >> "Config" >> "layer") + 1) cutRsc ["RscInfo", "PLAIN"]; _display = uiNamespace getVariable["RscInfo", displayNull]; };
      private _text_name = _display displayCtrl 1000;
      private _text_faction = _display displayCtrl 1001;
      private _text_cash = _display displayCtrl 1002;
      private _text_info = _display displayCtrl 1003;

      _text_name ctrlSetText format["[%1] %2", player getVariable["core_user_id", -1] ,(player getVariable["name", ""])];
      if(_tick % _every_tick == 0) then {
            if(_switch) then {
                  if(player getVariable["faction_id", -1] != -1) then {
                        _text_faction ctrlSetText format["[%1] %2", (player getVariable["faction_id", -1]), (player getVariable["faction_name", ""])];
                        if((ctrlTextWidth _text_faction) > ((ctrlPosition _text_faction) select 2)) then { _text_faction ctrlSetText format["[%1] %2", (player getVariable["faction_id", -1]), (player getVariable["faction_short", ""])];};
                  } else {
                        _text_faction ctrlSetText "";
                  };
                  _switch = false;
            } else {
                  if(!isNil "ClientModules_PublicJobs_fnc_getConfig") then {
                        private _var = player getVariable["public_job", ""];
                        if(_var != "") then {
                              private _config = [_var] call ClientModules_PublicJobs_fnc_getConfig;
                              _text_faction ctrlSetText (localize getText(_config >> "display"));
                        };
                  };
                  _switch = true;
            };
      };
      _text_cash ctrlSetText format["Cash: $%1", player getVariable["cash", 0]];
      _text_info ctrlSetText format["FPS: %1\n", ceil(diag_fps)];
      uiSleep _tick_time;
      _tick = _tick + 1;
};
