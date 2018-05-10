private _custom_fnc = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Functions" >> "spawn");
if(_custom_fnc != "" && !isNil _custom_fnc) then {
      _this call (call compile _custom_fnc);
} else {
      private _spawns = [
      	[[4922.395, 1917.579, 0.1], "Garden", ""],
      	[[4768.417, 2064.869, 0.2], "Garden 2", ""],
      	[[5027.071, 1959.889, 0.2], "Alley", ""],
      	[[4833.097, 2156.325, 0.2], "Alley 2", ""],
      	[[5038.764, 2101.847, 0.2], "Sky Alley", ""]
      ];
      private _spawn = _spawns call BIS_fnc_selectRandom;
      player setPosATL (_spawn select 0);
};
["onSpawn", [player, getPos player]] call Client_fnc_eventCall;
