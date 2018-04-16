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
