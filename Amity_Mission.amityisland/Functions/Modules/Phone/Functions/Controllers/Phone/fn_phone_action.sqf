disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
switch(_type) do {
      case "end": {
            if((player getVariable["phone_in_call", false]) || (player getVariable["phone_calling", false])) then {
                  [] call ClientModules_Phone_fnc_rejectCall;
            } else {
                  [] call ClientModules_Phone_fnc_lastCalls_open;
            };
      };
      case "answer": {
            if((player getVariable["phone_calling", false])) then {
                  //answering
                  [] call ClientModules_Phone_fnc_acceptCall;
            } else {
                  private _number = ctrlText 1400;
                  if([_number] call ClientModules_Phone_fnc_checkNumber) then {
                        [_number] call ClientModules_Phone_fnc_call;
                  } else {
                        hint "Number is not correct!";
                  };
            };
      };
      case "mute": {
            [] call ClientModules_Phone_fnc_disablePhone;
      };
      case "lower": {
            ["rem", 1] call ClientModules_Phone_fnc_volumeControl;
      };
      case "upper": {
            ["add", 1] call ClientModules_Phone_fnc_volumeControl;
      };
};
