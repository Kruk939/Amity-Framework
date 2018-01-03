private _tick = getNumber (missionConfigFile >> "Amity" >> "Setup" >> "loopTick");
while{true} do {
      uiSleep _tick;
      ["onTick", [player]] call Client_fnc_eventCall;
};
