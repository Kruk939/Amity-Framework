private _custom_fnc = getText (missionConfigFile >> "Amity" >> "Custamization" >> "Functions" >> "spawn");
if(_custom_fnc != "" && !isNil _custom_fnc) then {
      _this call (call compile _custom_fnc);
} else {
	  private _spawns = getArray(missionConfigFile >> "Amity" >> "Setup" >> "spawns");
      private _spawn = _spawns call BIS_fnc_selectRandom;
      player setPosATL (_spawn select 0);
};
["onSpawn", [player, getPos player]] call Client_fnc_eventCall;
