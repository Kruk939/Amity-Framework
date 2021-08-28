params ["_target",""];

[player, _target] call ACE_medical_fnc_treatmentAdvanced_fullHealLocal;
_target setVariable ["ace_medical_inCardiacArrest", false,true];
_target setVariable ["ace_medical_heartRate", 70, true];
_target setVariable ["ace_medical_bloodPressure", [80,120], true];
_target setVariable ["ACE_isDead", false, true];
