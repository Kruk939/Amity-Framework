private _tick = getNumber (missionConfigFile >> "Amity" >> "Setup" >> "loopTick");
while{true} do {
      uiSleep _tick;
      ["tick", [player]] spawn Client_fnc_eventCall;
};
