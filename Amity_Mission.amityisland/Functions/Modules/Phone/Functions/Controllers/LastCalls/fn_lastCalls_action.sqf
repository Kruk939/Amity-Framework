disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
switch(_type) do {
      case "call": {
            if(ORP_phoneTryingCall) then {
                  //answering
                  [] call ClientModules_Phone_fnc_accept_call;
            } else {
                  private _index = lbCurSel 1500;
                  if(_index == -1) exitWith {};
                  private _number = lbData[1500, _index];
                  if([_number] call ClientModules_Phone_fnc_checkNumber) then {
                        if(ORP_phoneInCall) then {
                              //adding to group call
                              [_number] call ClientModules_Phone_fnc_groupcall_add_number;
                        } else {
                              [_number] call ClientModules_Phone_fnc_call_number;
                        };
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
