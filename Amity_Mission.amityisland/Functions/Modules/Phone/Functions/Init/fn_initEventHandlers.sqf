//messages
["onMessageReceive", false] call Client_fnc_eventRegister;
["onMessageSend", false] call Client_fnc_eventRegister;
["onMessageFail", false] call Client_fnc_eventRegister;
["onSimLoad", false] call Client_fnc_eventRegister;

//calls
["onCalling", false] call Client_fnc_eventRegister;
["onReceiverBusy", false] call Client_fnc_eventRegister;
["onReceiverReject", false] call Client_fnc_eventRegister;
["onCallPlayerFound", false] call Client_fnc_eventRegister;
["onCallPlayerFoundFailed", false] call Client_fnc_eventRegister;
["onNoResponse", false] call Client_fnc_eventRegister;
["onDisconnect", false] call Client_fnc_eventRegister;
["onJoin", false] call Client_fnc_eventRegister;
