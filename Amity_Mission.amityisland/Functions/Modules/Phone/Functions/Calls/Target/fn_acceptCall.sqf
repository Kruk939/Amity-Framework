if(!(player getVariable["phone_calling", false])) exitWith {};
private _group = player getVariable["phone_call_group", []];
if(count (player call TFAR_fnc_radiosList) isEqualTo 0) exitWith {
      if((count _group) == 1) then {
            ["onReceiverReject", [player, player getVariable["phone_number", ""]]] remoteExec ["Client_fnc_eventCall", phone_var_caller];
      };
      player setVariable["phone_calling", false];
      phone_var_caller = objNull;
};
private _group = player getVariable["phone_call_group", []];
["onJoin", [player, player getVariable["phone_number", ""]]] remoteExec ["Client_fnc_eventCall", _group];
_group pushBack player;
player setVariable["phone_call_group", _group];
player setVariable["phone_calling", false];
[(player getVariable ["phone_current_freq", ""])] spawn ClientModules_Phone_fnc_call_loop;
