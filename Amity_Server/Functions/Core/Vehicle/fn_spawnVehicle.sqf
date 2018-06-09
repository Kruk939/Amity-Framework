params[["_id", -1], ["_player", objNull], ["_force", false]];
private _data = [_id] call Server_fnc_getVehicle;
if((count _data) == 0) exitWith {};
_data params ["_id", "_profile_id", "_faction_id", "_vehicle_id", "_class", "_vin", "_plate", "_status", "_hit", "_damage", "_fuel", "_color", "_material", "_rims", "_windows", "_lights", "_pos", "_inventory", "_access_level"];
if(_status == 0 || _force) then {
      private _vehicle = _class createVehicle [492.124,356.297,0.0019784];
      _vehicle setVariable ["id", _id, true];
      _vehicle setVariable ["vin", _vin];
      _vehicle setVariable ["plate", _plate];
      _vehicle setVariable ["profile_id", _profile_id];
      _vehicle setVariable ["faction_id", _faction_id];
      _vehicle setFuel _fuel;

      clearMagazineCargoGlobal _vehicle;
      clearWeaponCargoGlobal _vehicle;
      clearItemCargoGlobal _vehicle;

      [_vehicle, _hit] call Client_fnc_vehicleHitLoad;
      [_vehicle, 2, false] remoteExec ["Client_fnc_lock", _vehicle];

      private _handle = ["onVehicleSpawn", [_vehicle, _data]] call Client_fnc_eventCall;
      if(!isNull _player) then {
            _vehicle setVariable ["owner", _player, true];
            if(typeName _handle == "BOOL") then {
                  if(!_handle) then {
                        ["onVehicleSpawn", [_vehicle, _data], _player] call Client_fnc_eventCall;
                  };
            };
      } else {
            private _owner = [_profile_id] call Client_fnc_getPlayerByProfile;
            if(!isNull _owner) then {
                  _vehicle setVariable ["owner", _owner, true];
            };
      };
      amity_var_vehicles pushBack _vehicle;
      private _query = [format["core_garage_set_status:%1:%2", _id, 1], 2] call ExternalS_fnc_ExtDBasync;
};
