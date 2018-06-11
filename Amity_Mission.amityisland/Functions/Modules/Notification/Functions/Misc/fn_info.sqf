private _config = missionConfigFile >> "Notification";
while{true} do {
      disableSerialization;
      private _display = uiNamespace getVariable["RscInfo", displayNull];
      if(isNull _display) then { (getNumber(_config >> "Config" >> "layer") + 1) cutRsc ["RscInfo", "PLAIN"]; _display = uiNamespace getVariable["RscInfo", displayNull]; };
      private _text_name = _display displayCtrl 1000;
      private _text_faction = _display displayCtrl 1001;
      private _text_cash = _display displayCtrl 1002;
      private _text_info = _display displayCtrl 1003;

      _text_name ctrlSetText (player getVariable["name", ""]);
      _text_faction ctrlSetText (player getVariable["faction_name", ""]);
      _text_cash ctrlSetText format["Cash: $%1", player getVariable["cash", 0]];
      _text_info ctrlSetText format["FPS: %1\n", ceil(diag_fps)];
      uiSleep 0.5;
};
