disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
switch(_type) do {
      case "call": {
            if(player getVariable["phone_calling", false]) then {
                  //answering
                  [] call ClientModules_Phone_fnc_acceptCall;
            } else {
                  private _index = lbCurSel 1500;
                  if(_index == -1) exitWith {};
                  private _number = lbData[1500, _index];
                  if([_number] call ClientModules_Phone_fnc_checkNumber) then {
                        [_number] call ClientModules_Phone_fnc_call;
                  } else {
                        hint "Number is not correct!";
                  };
            };
      };
      case "add": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _number = lbData[1500, _index];
            [_number] call ClientModules_Phone_fnc_contactAdd_open;
      };
};
