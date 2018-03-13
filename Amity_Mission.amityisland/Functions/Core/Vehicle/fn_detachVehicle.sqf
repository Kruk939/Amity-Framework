params[["_vehicle", objNull]];
if (count attachedObjects player > 0) then {
	{
		detach _x;
		_x allowDamage true;
		_x setpos (getposatl _x)
	} foreach attachedobjects player;
	amity_var_attachedVehicle = objNull;
      if(!isNull _vehicle) then {
            _vehicle allowDamage true;
      };
};
