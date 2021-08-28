disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
switch(_type) do {
      case "lb": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["_id", "", "_number", "_balance", "_offer_id"];
            private _offer = [_offer_id] call ClientModules_Phone_fnc_getOffer;
            _offer params ["", "", "_sms_price", "_minute_price"];
            ctrlSetText[1000, format["ID: %1\nNumber: %2\nBalance: $%3\nMinute: $%4\nSMS: $%5", _id, _number, _balance, _minute_price, _sms_price]];
      };
      case "change": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["_id", "", "_number", "_balance", "_offer_id"];
            [_data] call ClientModules_Phone_fnc_loadSim;
      };
      case "remove": {
            if((count phone_var_numbers) == 1) exitWith { hint "You can't remove your only SIM Card. Buy new one and remove old one."; };
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["_id", "", "_number", "_balance", "_offer_id"];
            [_id] call ClientModules_Phone_fnc_removeSim;
      };
};
