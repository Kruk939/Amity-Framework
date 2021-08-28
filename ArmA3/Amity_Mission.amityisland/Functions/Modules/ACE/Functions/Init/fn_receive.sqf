params[["_data", []]];
medical_myHealth = _data deleteAt 0;
private _dead = _data deleteAt 0;
private _pain = _data deleteAt 0;
private _playerInjuries = _data;
if(_dead != 0) then { medical_deadPlayer = true;};
player setVariable["medical_deadPlayer",medical_deadPlayer,true];

if(medical_deadPlayer) then {
      waitUntil {!(isNull (findDisplay  46))};
      uiSleep 2;
      medical_deadPlayer = false;
      [player, true, 60] spawn ace_medical_fnc_setUnconscious;
};

if(medical_myHealth < 0.9) then {
      player setDamage medical_myHealth;
};

//hitpoints
{
      private _damage = _playerInjuries select _forEachIndex;
      if(_damage > 0.2) then {
            [player, _damage, _x, "stab"] call ace_medical_fnc_addDamageToUnit;
      };
} foreach medical_selectionArray;

private _currentPain = player getVariable "ACE_medical_pain";
[player, _pain - _currentPain] call ace_medical_fnc_adjustPainLevel;
