params[["_freq", ""]];
if(_freq == "") exitWith { [] call ClientModules_Phone_fnc_reset_status; };
if(count (player call TFAR_fnc_radiosList) isEqualTo 0) exitWith { [] call ClientModules_Phone_fnc_reset_status; };
if(((([] call TFAR_fnc_activeSwRadio) find "cg_tablet") == -1) && ((([] call TFAR_fnc_activeSwRadio) find "openrp_phone") == -1)) then {
      phone_var_lastFreq = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwFrequency;
};
player setVariable["phone_current_freq", _freq, true];
player setVariable["phone_in_call", true];


private _channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
_channel = _channel + 1;
[(call TFAR_fnc_activeSwRadio), _channel, _freq] call TFAR_fnc_SetChannelFrequency;
player setVariable ["tf_unable_to_use_radio", false];

playSound "openrp_phone_static";

[] spawn {
      private _check = 0;
      while{(player getVariable["phone_in_call", false])} do {
            uiSleep 3;
            //if((count (player call TFAR_fnc_radiosList) isEqualTo 0)) exitWith {};
            private _group = [] call ClientModules_Phone_fnc_checkGroup;
            if((count _group) < 2) exitWith {};
            _check = _check + 1;
            if(_check == 20) then {
                  _check = 0;
            };
      };
      [] call ClientModules_Phone_fnc_reset_status;
};
