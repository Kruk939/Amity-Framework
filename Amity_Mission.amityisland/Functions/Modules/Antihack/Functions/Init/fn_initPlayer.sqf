private _allVariables = (allVariables player) + (allVariables missionNameSpace);
[_allVariables, player] remoteExecCall ["ServerModules_AntiHack_fnc_checkVariables", 2];
[] spawn {
      waitUntil{!isNil "anithack_var_bad_variables"};
      {
            private _fnc = missionNameSpace getVariable [_x, nil];
            if(!isNil "_fnc") then {
                  missionNameSpace setVariable[_x, nil];
            };
      } forEach anithack_var_bad_variables;
};
