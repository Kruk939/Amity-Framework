disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
switch(_type) do {
      case "call": {
            if(player getVariable["phone_calling", false]) then {
                  //answering
                  [] call ClientModules_Phone_fnc_accept_call;
            } else {
                  private _index = lbCurSel 1500;
                  if(_index == -1) exitWith {};
                  private _data = call compile (lbData[1500, _index]);
                  _data params["_id", "_name", "_number", "_player"];
                  [_number] call ClientModules_Phone_fnc_call_number;
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
      case "sms": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["_id", "_name", "_number", "_player"];
            [_number] call ClientModules_Phone_fnc_message_new_open;
      };
      case "edit": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["_id", "_name", "_number", "_player"];
            [_number, _name] call ClientModules_Phone_fnc_contactAdd_open;
      };
      case "remove": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["_id", "_name", "_number", "_player"];
            [_id] call ClientModules_Phone_fnc_removeContact;
            [] call ClientModules_Phone_fnc_contacts_open;
      };
};
