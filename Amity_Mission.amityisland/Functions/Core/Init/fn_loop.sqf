private _tick = getNumber (missionConfigFile >> "Amity" >> "Setup" >> "loopTick");
private _count = 0;
diag_log "--------------------- Initializing loop";
while{true} do {
      uiSleep _tick;
      _count = _count + 1;
      ["onTick", [player, _count * _tick, _count]] call Client_fnc_eventCall;
};
