player setVariable["phone_in_call", false];
private _group = player getVariable["phone_call_group", []];
_group deleteAt (_group find player);
if(count _group != 0) then {
      ["onDisconnect", [player, player getVariable["phone_number", ""]]] remoteExec ["Client_fnc_eventCall", _group];
};
player setVariable["phone_call_group", []];
player setVariable["phone_calling", false];
player setVariable["phone_current_freq", nil, true];
phone_var_caller = objNull;

if(!(isNull phone_var_current_sound)) then { deleteVehicle phone_var_current_sound; };

if(((([] call TFAR_fnc_activeSwRadio) find "cg_tablet") == -1) && ((([] call TFAR_fnc_activeSwRadio) find "openrp_phone") == -1)) then {
	[(call TFAR_fnc_activeSwRadio), phone_var_lastFreq] call TFAR_fnc_setSwFrequency;
} else {
	private _channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, getPlayerUID player] call TFAR_fnc_SetChannelFrequency;
	player setVariable ["tf_unable_to_use_radio", true];
};
