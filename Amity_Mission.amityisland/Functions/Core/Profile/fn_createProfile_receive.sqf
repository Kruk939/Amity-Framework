params[["_message", ""]];
disableSerialization;
if(_message == "OK") exitWith {
      closeDialog 0;
      [player] remoteExec ["Server_fnc_initPlayer", 2];
};
if(_message == "EXISTS") exitWith {
      ["Name already exists. Choose different one.", true] call Client_fnc_doMsg;
      ctrlEnable[1601, true];
};
