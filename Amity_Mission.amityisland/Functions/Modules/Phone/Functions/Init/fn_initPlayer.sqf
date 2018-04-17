[player, "ClientModules_Phone_fnc_receive"] remoteExec ["ServerModules_Phone_fnc_initPlayer", 2];
if(!(((([] call TFAR_fnc_activeSwRadio) find "cg_tablet") == -1) && ((([] call TFAR_fnc_activeSwRadio) find "openrp_phone") == -1))) then {
	private _channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, getPlayerUID player] call TFAR_fnc_SetChannelFrequency;
	player setVariable ["tf_unable_to_use_radio", true];
};
