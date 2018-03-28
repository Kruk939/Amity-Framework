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
