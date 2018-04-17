disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
switch(_type) do {
      case "LB": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["_message", "_sender_number", "_receiver_number"];
            ctrlSetText [1000, _message];
      };
      case "CB": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            lbClear 1501;
            {
                  private _index = lbAdd [1501, name (_x select 0)];
                  lbSetdata[1501, _index, str(_x)];
            } foreach _data;
      };
      case "call": {
            private _index = lbCurSel 1501;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1501, _index]);
            _data params["_player", "_number"];
            [_number] call ClientModules_Phone_fnc_call_number;
      };
};
