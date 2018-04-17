disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
switch(_type) do {
      case "buy": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = parseNumber (lbData[1500, _index]);
            [_data] call ClientModules_Phone_fnc_addFounds;
      };
};
