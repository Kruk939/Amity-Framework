params[["_data", []]];
private _move = false;
{
      _x params["", "_active"];
      if(_active == 1) exitWith { _move = true; };
} forEach _data;
if(_move) then {
      private _jail = [getNumber(missionConfigFile >> "Jail" >> "Setup" >> "defaultJail"), "id"] call ClientModules_Jail_fnc_jail_getConfig;
      if(isNull _jail) exitWith {};
      private _entryPoint = getArray(_jail >> "Locations" >> "entryPoint");
      if(count _entryPoint != 0) then {
            player setPosATL (_entryPoint select 0);
      } else {
            player setPosATL (getArray(_jail >> "Locations" >> "position"));
      };
      [_data] spawn ClientModules_Jail_fnc_jailLoop;
};
