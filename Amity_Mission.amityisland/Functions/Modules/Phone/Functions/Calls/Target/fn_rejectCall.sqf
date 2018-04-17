if(player getVariable["phone_calling", false]) then {
      if(!isNull phone_var_caller) then {
            ["onReceiverReject", [player, player getVariable["phone_number", ""]]] remoteExec ["Client_fnc_eventCall", phone_var_caller];
      };
      player setVariable["phone_current_freq", nil];
      player setVariable["phone_call_group", []];
      player setVariable["phone_calling", false];
} else {
      [] call ClientModules_Phone_fnc_reset_status;
};
