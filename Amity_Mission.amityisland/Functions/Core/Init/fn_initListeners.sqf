private _save = {
      params[["_player", objNull], "", ["_tick", 0]];
      if((_tick % 5) == 0 && _tick >= 10) then {
            [] call Client_fnc_save;
      };
};
["onTick", _save] call Client_fnc_eventAdd;

private _paycheck = {
      params[["_player", objNull], "", ["_tick", 0]];
      if((_tick % 10) == 9) then {
            private _salary = _player getVariable["faction_salary", 0];
            if(_salary > 0) then {
                  private _faction_id = _player getVariable["faction_id", -1];
                  if(_faction_id != -1) then {
                        private _time = getNumber (missionConfigFile >> "Amity" >> "Setup" >> "loopTick");
                        private _last = _time * 10;
                        [_player, _last] remoteExec ["Server_fnc_factionPayCheck", 2];
                  };
            };
      };
};
["onTick", _paycheck] call Client_fnc_eventAdd;
["onVehicleSpawn", "Client_fnc_handleVehicle"] call Client_fnc_eventAdd;

waitUntil {!(isNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call Client_fnc_keyHandler"];
