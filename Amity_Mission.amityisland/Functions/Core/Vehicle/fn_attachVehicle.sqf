params[["_vehicle", objNull], ["_check", true]];
if(isNull _vehicle) exitWith {};
if(!isNull amity_var_attachedVehicle) exitWith {};
_vehicle attachTo [player, [0, 5, 2.5]];
amity_var_attachedVehicle = _vehicle;
_vehicle allowDamage false;
if(_check) then {
      [_vehicle] spawn Client_fnc_attachCheck;
};
