if(!isNull phone_var_current_sound) then { deleteVehicle phone_var_current_sound; };
if(player getVariable["phone_disabled", false]) then {
      hint "You enabled phone calls";
      player setVariable["phone_disabled", false];
} else {
      hint "You disabled phone calls";
      player setVariable["phone_disabled", true];
};
