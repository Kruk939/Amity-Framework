disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
switch(_type) do {
      case "lb": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["", "_message", "_sender_number", "_receiver_number"];
            ctrlSetText [1000, _message];
      };
      case "new": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["", "", "_sender_number", "_receiver_number"];
            private _current_number = player getVariable ["phone_number", ""];
            private _to = _sender_number;
            if(_sender_number == _current_number) then { _to = _receiver_number; };
            [_to] call ClientModules_Phone_fnc_message_new_open;
      };
      case "call": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["", "", "_sender_number", "_receiver_number"];
            private _current_number = player getVariable ["phone_number", ""];
            private _to = _sender_number;
            if(_sender_number == _current_number) then { _to = _receiver_number; };
            [_to] call ClientModules_Phone_fnc_call;
      };
      case "add": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["", "", "_sender_number", "_receiver_number"];
            private _current_number = player getVariable ["phone_number", ""];
            private _to = _sender_number;
            if(_sender_number == _current_number) then { _to = _receiver_number; };
            [_to] call ClientModules_Phone_fnc_contactAdd_open;
      };
};
