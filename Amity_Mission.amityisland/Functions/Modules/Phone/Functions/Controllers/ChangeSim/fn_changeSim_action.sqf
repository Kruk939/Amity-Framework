disableSerialization;
if(!dialog) exitWith {};
params[["_type", ""]];
switch(_type) do {
      case "lb": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["_id", "_owner_uid", "_number", "_balance", "_offer_id", "_company_id", "_sms_price", "_minute_price"];
            ctrlSetText[1000, format["ID: %1\nNumber: %2\nBalance: $%3\nMinute: $%4\nSMS: $%5", _id, _number, _balance, _minute_price, _sms_price]];
      };
      case "change": {
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["_id", "_owner_uid", "_number", "_balance", "_offer_id", "_company_id", "_sms_price", "_minute_price"];
            [_id] call ClientModules_Phone_fnc_changeNumber;
      };
      case "remove": {
            if((count ORP_phoneNumbers) == 1) exitWith { hint "You can't remove your only SIM Card. Buy new one and remove old one."; }; 
            private _index = lbCurSel 1500;
            if(_index == -1) exitWith {};
            private _data = call compile (lbData[1500, _index]);
            _data params["_id", "_owner_uid", "_number", "_balance", "_offer_id", "_company_id", "_sms_price", "_minute_price"];
            [_id] call ClientModules_Phone_fnc_deleteNumber;
      };
};
