params[["_target",objNull], ["_force", false]];
if(isNull _target) exitWith {};
private _damage = _target getVariable["ace_medical_bodyPartStatus",[0,0,0,0,0,0]];
private _canRevive = true;
private _minDamage = getNumber(missionConfigFile >> "Medical" >> "Config" >> "minimalDamageToRevive");
{
      if(_x >= _minDamage) exitWith {
            _canRevive = false;
      };
} foreach _damage;
if(!_canRevive && !_force) exitWith {}; //to much damage
[_target, false] call ace_medical_fnc_setUnconscious;
