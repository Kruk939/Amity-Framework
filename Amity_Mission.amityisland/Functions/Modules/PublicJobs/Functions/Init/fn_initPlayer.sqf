if(!isNil "ClientModules_Phone_fnc_addServiceCategory") then {
      private _configs = [] call ClientModules_PublicJobs_fnc_getConfigs;
      {
            if(getNumber(_x >> "show") == 1) then {
                  private _func = compile format["private _ret = []; { private _number = _x getVariable['phone_number', '']; if(_x getVariable['public_job', ''] == '%1' && _number != '') then { _ret pushBack [player getVariable['first_name', ''],_number]; } } forEach allPlayers; _ret;", getText(_x >> "variable")];
                  [getText(_x >> "display"), _func] call ClientModules_Phone_fnc_addServiceCategory;
            };
      } forEach _configs;
};
