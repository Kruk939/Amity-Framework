private _save = {
      params[["_player", objNull], ["_time", 0], ["_tick", 0]];
      if((_tick % 4) == 0) then {
            [] call Client_fnc_save;
      };
};
["onTick", _save] call Client_fnc_eventAdd;