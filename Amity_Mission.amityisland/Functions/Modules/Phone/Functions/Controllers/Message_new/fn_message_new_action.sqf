disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
switch(_type) do {
      case "send": {
            private _number = ctrlText 1400;
            private _message = ctrlText 1401;
            private _check = [_number] call ClientModules_Phone_fnc_checkNumber;
            if(!_check || _number == "") then {
                  hint "Number is incorrect!";
            } else {
                  [_number, _message] call ClientModules_Phone_fnc_sendMessage;
                  [] call ClientModules_Phone_fnc_messages_open;
            };
      };
};
