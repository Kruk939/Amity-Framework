private _onShopRobbed = {
      _this params["_target", "_player", "_nearest"];
      [_target, [_player, _nearest], "robbery"] call ClientModules_Evidence_fnc_addEvidence;
};
["onShopRobbed", _onShopRobbed] call Client_fnc_eventAdd;

private _onShopBeingRobbed = {
      _this params["_target", "_player", "_nearest"];
      [_target, [_player, _nearest], "robbery"] call ClientModules_Evidence_fnc_addEvidence;
};
["onShopBeingRobbed", _onShopBeingRobbed] call Client_fnc_eventAdd;

private _onDrillPlace = {
      _this params["_target", "_drill", "_player", "_nearest"];
      [_target, [_player, _nearest], "drill_target"] call ClientModules_Evidence_fnc_addEvidence;
      [_drill, [_player, _nearest], "drill"] call ClientModules_Evidence_fnc_addEvidence;
};
["onDrillPlace", _onDrillPlace] call Client_fnc_eventAdd;

private _onDrillFinish = {
      _this params["_target", "_drill", "_player", "_nearest"];
      [_target, [_player, _nearest], "drill_finish_target"] call ClientModules_Evidence_fnc_addEvidence;
      [_drill, [_player, _nearest], "drill_finish"] call ClientModules_Evidence_fnc_addEvidence;
};
["onDrillFinish", _onDrillFinish] call Client_fnc_eventAdd;

private _onBankCaseTake = {
      _this params["_safe", "_player", "_nearest"];
      [_safe, [_player, _nearest], "bank"] call ClientModules_Evidence_fnc_addEvidence;
};
["onBankCaseTake", _onBankCaseTake] call Client_fnc_eventAdd;
