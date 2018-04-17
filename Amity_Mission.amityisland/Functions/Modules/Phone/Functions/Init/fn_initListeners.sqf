private _receive = {
      //params["_id", "_message", "_sender", "_receiver"];
      params["", "", "", "_receiver"];
      private _number = player getVariable ["phone_number", ""];
      if(_number == _receiver) then {
            ["You received new message!", true] call Client_fnc_domsg;
      };
      _this call ClientModules_Phone_fnc_addMessage;
};
["onMessageReceive", _receive] call Client_fnc_eventAdd;

private _send = {
      //params["_id", "_message", "_sender", "_receiver"];
      _this call ClientModules_Phone_fnc_addMessage;
      ["Your message has been sent!", true] call Client_fnc_domsg;
};
["onMessageSend", _send] call Client_fnc_eventAdd;

private _fail = {
      //params["_id", "_message", "_sender", "_receiver"];
      ["You couldn't sand message!", true] call Client_fnc_domsg;
};
["onMessageFail", _fail] call Client_fnc_eventAdd;


private _busy = {
      params["_receiver", "_callGroup", "_player", "_freq", "_target"];
      ["Target is busy!", true] call Client_fnc_domsg;
};
["onReceiverBusy", _busy] call Client_fnc_eventAdd;

private _failed = {
      params["_receiver", "_callGroup", "_player", "_freq", "_target"];
      ["Target not found!", true] call Client_fnc_domsg;
};
["onCallPlayerFoundFailed", _failed] call Client_fnc_eventAdd;

["onCalling", "ClientModules_Phone_fnc_receiveCall"] call Client_fnc_eventAdd;
["onCallPlayerFound", "ClientModules_Phone_fnc_receiveTarget"] call Client_fnc_eventAdd;

private _onJoin = {
      params["_target", "_number"];
      private _group = player getVariable["phone_call_group", []];
      if((count _group) == 1) then {
            //start call
            hint format["%1 joined your call", name _target];
            _group = [player];
            private _freq = player getVariable["phone_current_freq", ""];
            [_freq] call ClientModules_Phone_fnc_call_loop;
      } else {
            hint format["%1 joined your group", name _target];
            //target joined call
      };
      player setVariable["phone_calling", false];
      _group pushBack _target;
      player setVariable["phone_call_group", _group];
};
["onJoin", _onJoin] call Client_fnc_eventAdd;

private _onDisconnect = {
      params["_target", "_number"];
      private _group = player getVariable["phone_call_group", []];
      if(count _group <= 2) then {
            [] call ClientModules_Phone_fnc_reset_status;
      } else {
            _group deleteAt (_group find _target);
            player setVariable["phone_call_group", _group];
      };

};
["onDisconnect", _onDisconnect] call Client_fnc_eventAdd;

private _onReject = {
      params["_target", "_number"];
      private _group = player getVariable["phone_call_group", []];
      if(count _group == 1) then {
            [] call ClientModules_Phone_fnc_reset_status;
      } else {
            player setVariable["phone_calling", false];
            phone_var_caller = objNull;
      };
      hint format["%1 didn't answer", _number];
};
["onReceiverReject", _onReject] call Client_fnc_eventAdd;


private _onSave = {

};
["onSave", _onSave] call Client_fnc_eventAdd;

private _onTick = {
      if(!(((([] call TFAR_fnc_activeSwRadio) find "cg_tablet") == -1) && ((([] call TFAR_fnc_activeSwRadio) find "openrp_phone") == -1))) then {
      	private _channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
      	_channel = _channel + 1;
      	[(call TFAR_fnc_activeSwRadio), _channel, getPlayerUID player] call TFAR_fnc_SetChannelFrequency;
      	player setVariable ["tf_unable_to_use_radio", true];
      };
};
["onTick", _onTick] call Client_fnc_eventAdd;
