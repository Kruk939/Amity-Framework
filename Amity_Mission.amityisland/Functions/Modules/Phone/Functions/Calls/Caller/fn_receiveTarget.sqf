params["_receiver", "_callGroup", "_player", "_freq", "_target"];
phone_var_caller = _target;
player setVariable["phone_calling", true];
player setVariable["phone_current_freq", _freq];
player setVariable["phone_call_group", _callGroup];
_this spawn {
      params["_receiver", "_callGroup", "_player", "_target"];
      private _toEnd = 0;
      while{(player getVariable["phone_calling", false]) && !(isNull phone_var_caller)} do {
            playSound "openrp_phone_call";
      	_toEnd = _toEnd + 1;
      	sleep 5;
      	if (_toEnd > 12) exitWith  {
                  ["onNoResponse", _this] call Client_fnc_eventCall;
                  ["No answer", true] call Client_fnc_domsg;
                  playSound "openrp_phone_hangup";
            };
      };
};
