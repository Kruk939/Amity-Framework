params["_receiver", "_callGroup", "_player", "_freq", "_target"];

if(isNull _player) exitWith {};
if(player getVariable["phone_in_call", false] || player getVariable["phone_disabled", false] || player getVariable["phone_calling", false] || (count (player call TFAR_fnc_radiosList) isEqualTo 0)) exitWith {
      ["onReceiverBusy", false] remoteExecCall ["Client_fnc_eventCall", _player];
};
player setVariable["phone_calling", true];
player setVariable["phone_call_group", _callGroup];
player setVariable["phone_current_freq", _freq];

phone_var_last_calls pushBack (_player getVariable["phone_number", ""]);

//start looping sound
if(!(isNull phone_var_current_sound)) then { deleteVehicle phone_var_current_sound; };
_this spawn {
      params["_receiver", "_callGroup", "_player", "_freq", "_target"];
      phone_var_caller = _player;
      private _ring_tone = format["SFX_openrp_Ringtone%1",(player getVariable ["phone_ring", 1])];
      private _toEnd = 0;
      hint format["%1 is calling you!", _player getVariable["phone_number", ""]];
      while{(player getVariable["phone_calling", false]) && !(isNull phone_var_caller)} do {
            _toEnd = _toEnd + 1;
            if (isNull phone_var_current_sound && !(player getVariable["phone_disabled", false])) then {
                  phone_var_current_sound = createSoundSource [_ring_tone, position player, [], 0];
                  phone_var_current_sound attachTo [player, [0,0,0]];
            };
      	sleep 5;
      	if (_toEnd > 12) exitWith {
                  hint "Didn't answer";
                  [] call ClientModules_Phone_fnc_reset_status;
      	};
      };
      if(!(isNull phone_var_current_sound)) then { deleteVehicle phone_var_current_sound; };
};
