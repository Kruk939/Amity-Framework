params[["_target", objNull]];
if(isNull _target) exitWith {};
private _cases = _target getVariable["cases", []];
private _bank = _target getVariable["bank", objNull];

{
      if(!isNull _x) then {
            deleteVehicle _x;
      };
} forEach _cases;

if(!isNull _bank) then {
      _bank setVariable ["bis_disabled_Door_vault",1,true];
      _bank setVariable ["bis_disabled_Door_17",1,true];
};
_target setVariable ["bis_disabled_Door_safe",1,true];

uiSleep 0.2;

if(!isNull _bank) then {
      _bank animate ["Door_vault", 0];
      _bank animate ["Door_17", 0];
};
_target animate ["Door_safe", 0];
