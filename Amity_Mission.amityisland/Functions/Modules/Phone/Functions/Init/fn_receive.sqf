params[["_data", []], ["_numbers", []], ["_contacts", []]];
phone_var_data = _data;
phone_var_numbers = _numbers;
phone_var_contacts = _contacts;

if(count _numbers != 0) then {
      [_numbers select 0] call ClientModules_Phone_fnc_loadSim;
};
if(!(((([] call TFAR_fnc_activeSwRadio) find "cg_tablet") == -1) && ((([] call TFAR_fnc_activeSwRadio) find "openrp_phone") == -1))) then {
	private _channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, getPlayerUID player] call TFAR_fnc_SetChannelFrequency;
	player setVariable ["tf_unable_to_use_radio", true];
};
