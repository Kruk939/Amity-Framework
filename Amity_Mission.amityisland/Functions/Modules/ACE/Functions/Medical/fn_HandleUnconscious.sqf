params["_unit","_state"];
if(_unit != player) exitWith {};
medical_deadPlayer = _state;
if(_state) then {
      player setVariable["tf_voiceVolume", 0, true];
      player setVariable["Unconscious_start", time];
      [] spawn {
            while{medical_deadPlayer} do {
                  uiSleep 0.5;
                  private _damage = player getVariable["ace_medical_bodyPartStatus",[0,0,0,0,0,0]];
                  private _overAll = 0;
                  {
                        _overAll = _overAll + _x;
                  } foreach _damage;
                  _overAll = _overAll / (count _damage);
                  if(_overAll > 0.5 || player getVariable ["ace_medical_inCardiacArrest",false]) exitWith {
                        uiSleep (getNumber(missionConfigFile >> "Medical" >> "Config" >> "requestMedicDelay"));
                        if(medical_deadPlayer) then {
                              ["onMedicalRequest",[player]] remoteExecCall["Client_fnc_eventCall", -2];
                              [true] spawn ClientModules_Ace_fnc_update;
                        };
                  };
            };
      };
} else {
      player setVariable["EMSMedical_request_medic",nil, true];
      player setVariable["tf_voiceVolume", 1, true];
      player setVariable["Unconscious_start", nil];
};
[player, _state] remoteExecCall["ServerModules_ACE_fnc_setDead", 2];
