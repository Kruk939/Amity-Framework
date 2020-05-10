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
      ["onObjectAttachedDetach", amity_var_attachedObject] call Client_fnc_eventCall;
};
amity_var_attachedObject = objNull;
