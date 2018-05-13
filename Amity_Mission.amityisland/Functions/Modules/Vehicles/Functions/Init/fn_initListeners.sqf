private _code = {
      private _target = cursorObject;
      if((vehicle player != player)) then {
            _target = vehicle player;
      };
      if(_target distance player <= 10) then {
            if(((_target isKindOf "Car") || (_target isKindOf "Ship") || (_target isKindOf "Air"))) then {
                  if(_target IN amity_var_vehicles) then {
                        [_target] call Client_fnc_lock;
                  };
            };
      };
};
[22, [], _code, "VEHICLE_KEYS"] call Client_fnc_keyHandlerAdd;


private _keyManual = {
      params ["","","","_ctrl",""];
      private _vehicle = vehicle player;
      private _array = [_vehicle] call ClientModules_Vehicles_fnc_sirenGetArray;
      if(count _array == 0) exitWith {};
      private _source = _vehicle getVariable["Vehicle_SirenSource", objNull];
      if(!Vehicles_var_sirens_free_key) exitWith {};
      Vehicles_var_sirens_free_key = false;
      if(_ctrl) then {
            if(Vehicles_var_sirens_mode_manual) then {
                  Vehicles_var_sirens_mode_manual = false;
                  [] call ClientModules_Vehicles_fnc_sirenCreate;
                  systemChat format["Siren Changed to automatic"];
            } else {
                  Vehicles_var_sirens_mode_manual = true;
                  [] call ClientModules_Vehicles_fnc_sirenDestroy;
                  systemChat format["Siren Changed to manual"];
            };
      } else {
            if(Vehicles_var_sirens_mode_manual) then {
                  [] call ClientModules_Vehicles_fnc_sirenCreate;
            } else {
                  if(!isNull _source) then {
                        [] call ClientModules_Vehicles_fnc_sirenDestroy;
                  } else {
                        [] call ClientModules_Vehicles_fnc_sirenCreate;
                  };
            };
      };
      true;
};
[getNumber(missionConfigFile >> "Vehicles" >> "Sirens" >> "Keys" >> "keyManual"), [], _keyManual] call Client_fnc_keyHandlerAdd;

private _keySwitch = {
      if(!Vehicles_var_sirens_free_key) exitWith {};
      Vehicles_var_sirens_free_key = false;
      [] call ClientModules_Vehicles_fnc_sirenDestroy;
      private _vehicle = vehicle player;
      private _array = [_vehicle] call ClientModules_Vehicles_fnc_sirenGetArray;
      private _lenght = count _array;
      if(_lenght == 0) exitWith {};
      if(Vehicles_var_sirens_current >= _lenght - 1) then {
            Vehicles_var_sirens_current = 0;
      } else {
            Vehicles_var_sirens_current = Vehicles_var_sirens_current + 1;
      };
      systemChat format["Siren Tone: %1", getText(configFile >> "CfgVehicles" >> (_array select Vehicles_var_sirens_current) >> "displayName")];
      if(!Vehicles_var_sirens_mode_manual) then {
            [] call ClientModules_Vehicles_fnc_sirenCreate;
      };
      true;
};
[getNumber(missionConfigFile >> "Vehicles" >> "Sirens" >> "Keys" >> "keySwitch"), [], _keySwitch] call Client_fnc_keyHandlerAdd;

private _keyMode = {
      if(!Vehicles_var_sirens_free_key) exitWith {};
      Vehicles_var_sirens_free_key = false;
      [] call ClientModules_Vehicles_fnc_sirenDestroy;
      private _vehicle = vehicle player;
      private _array = [_vehicle] call ClientModules_Vehicles_fnc_sirenGetArray;
      private _lenght = count _array;
      if(_lenght == 0) exitWith {};
      if(Vehicles_var_sirens_current > 0) then {
            Vehicles_var_sirens_current = Vehicles_var_sirens_current - 1;
      } else {
            Vehicles_var_sirens_current = _lenght - 1;
      };
      systemChat format["Siren Tone: %1", getText(configFile >> "CfgVehicles" >> (_array select Vehicles_var_sirens_current) >> "displayName")];
      if(!Vehicles_var_sirens_mode_manual) then {
            [] call ClientModules_Vehicles_fnc_sirenCreate;
      };
      true;
};
[getNumber(missionConfigFile >> "Vehicles" >> "Sirens" >> "Keys" >> "keyMode"), [], _keyMode] call Client_fnc_keyHandlerAdd;

(findDisplay 46) displayAddEventHandler["KeyUp", "_this call ClientModules_Vehicles_fnc_sirenKeyUp"];

player addEventHandler ["GetOutMan", {
      params["", "_role", "", ""];
      if(_role != "driver") exitWith {};
      [] call ClientModules_Vehicles_fnc_sirenDestroy;
}];
