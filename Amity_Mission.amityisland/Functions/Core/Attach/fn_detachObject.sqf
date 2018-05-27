params[["_vehicle", amity_var_attachedObject]];
if (count attachedObjects player > 0) then {
	{
		detach _x;
		_x allowDamage true;
		_x setpos (getposatl _x)
	} foreach attachedobjects player;
      if(!isNull _vehicle) then {
            _vehicle allowDamage true;
      };
};
amity_var_attachedObject = objNull;
