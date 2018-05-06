params[["_target", objNull], ["_gate", false]];
if(isNull _target) exitWith {};
if(player distance public_jobs_var_vehicle > 50) exitWith {
      ["You are too far away from your car!", true] call Client_fnc_domsg;
};

[player, "AmovPknlMstpSrasWrflDnon", 1] call ace_common_fnc_doAnimation;
private _onFinish = {
      (_this select 0) params[["_target", objNull], ["_gate", false]];
      if(player distance public_jobs_var_vehicle > 50) exitWith {
            ["You are too far away from your car!", true] call Client_fnc_domsg;
      };
      if(_gate) then {
            private _gates = nearestobjects [position player,["Land_GatedoorA"], 100];
            {
                  _x setDamage 0;
                  _x setVariable["amity_repair", nil, true];
            } forEach _gates;
      } else {
            _target setDamage 0;
            _target setVariable["amity_repair", nil, true];
      };
      [getNumber(missionConfigFile >> "PublicJobs" >> "Jobs" >> "Mechanic" >> "Setup" >> "rapairFee")] call ClientModules_PublicJobs_fnc_addPaycheck;
      [player, "AmovPknlMstpSrasWrflDnon", 1] call ace_common_fnc_doAnimation;
};
private _onFailure = {
      [player, "AmovPknlMstpSrasWrflDnon", 1] call ace_common_fnc_doAnimation;
};
[10, [_target,_gate],_onFinish,_onFailure, "Repairing"] call Client_fnc_progressBar;
