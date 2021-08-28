player addEventHandler["handleDamage", { _this spawn ClientModules_ACE_fnc_handleDamage; false } ];
["ace_unconscious", ClientModules_ACE_fnc_HandleUnconscious] call CBA_fnc_addEventHandler;
player addEventHandler ["Killed", { _this spawn ClientModules_ACE_fnc_handleKilled;}];

private _onSave = {
      [true] call ClientModules_Ace_fnc_update;
};
["onSave", _onSave] call Client_fnc_eventAdd;
