params[["_target", objNull], ["_attachPoint", [0,1.5,1]]];
if(!isNull amity_var_attachedVehicle || !isNull amity_var_attachedObject) exitWith {};
if(!(_target getVariable["attachable", false])) exitWith {};
_target attachTo [player, _attachPoint];
_target allowDamage false;
amity_var_attachedObject = _target;
