public_jobs_mechanic_var_objects = nearestobjects [amity_var_map_center, ["Land_GatedoorA","xcam_SignT_InfoPedCrossing","Land_MBG_Cinderwall_5dam","Land_LampStreet_F","Land_ParkingMeter_01_F","ArrowDesk_L_F","Land_LampDecor_F","Land_ConcreteWall_01_l_gate_closed_F","Land_LampStreet_small_F","Land_ConcreteWall_01_m_gate_closed_F"], 3500];
[] spawn {
      uiSleep 5;
      while{public_jobs_var_running} do {
            private _object = public_jobs_mechanic_var_objects call BIS_fnc_selectRandom;
            if(!(_object getVariable["amity_repair", false]) && _object distance player > 100 && (damage _object) == 1) then {
                  temp_obj = _object;
                  ["TEST_STR", getPos _object] call ClientModules_PublicJobs_fnc_addMarker;
                  private _gate = (typeOf _object == "Land_GatedoorA");
                  ["You have new thing to repair, check your map!", true] call Client_fnc_domsg;
                  private _action = [
                        ["PUBLIC_JOB_ACTION", "Repair", "", { [_target, false] call ClientModules_PublicJobs_fnc_mechanic_repair; }, {true}, {}, "", "", 20],
                        ["object", [_object, 0, []]]
                  ];
                  if(_gate) then {
                        private _check = compile (format["player distance %1 <= 20", getPos _object]);
                        _action = [
                             ["PUBLIC_JOB_ACTION", "Repair", "", { [_target, true] call ClientModules_PublicJobs_fnc_mechanic_repair; }, _check],
                             ["object", [player, 1, ["ACE_SelfActions"]]]
                       ];
                  };
                  _object setVariable["amity_repair", true, true];
                  [_action] spawn Client_fnc_addAction;
                  private _time = time;
                  waitUntil{!(_object getVariable["amity_repair", false]) || time - _time > 600 || !public_jobs_var_running};
                  _object setVariable["amity_repair", nil, true];
                  if(_gate) then {
                        [player, 0, ["ACE_SelfActions", "PUBLIC_JOB_ACTION"]] call ace_interact_menu_fnc_removeActionFromObject;
                  } else {
                        [_object, 0, ["PUBLIC_JOB_ACTION"]] call ace_interact_menu_fnc_removeActionFromObject;
                  };
                  if(!public_jobs_var_running) exitWith {};
                  uiSleep (20 + random(20));
            };
      };
};
