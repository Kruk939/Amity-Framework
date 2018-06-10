if(!isNil "ClientModules_Phone_fnc_addServiceCategory") then {
      waitUntil{!isNil "phone_var_faction_numbers"};
      private _fnc = {
            private _ret = []; //name, number
            {
                  _x params["", "", "_emergency", "_number", "", "_full", "_name"];
                  if(_emergency == 1) then {
                        private _disp = if(typeName _name == "OBJECT") then { _full; } else { _name call BIS_fnc_localize; };
                        _ret pushBack [_disp, _number];
                  };
            } forEach phone_var_faction_numbers;
            _ret;
      };
      [localize "STR_DISPATCH_EMERGENCY", _fnc] call ClientModules_Phone_fnc_addServiceCategory;
};
