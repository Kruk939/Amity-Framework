params[["_type",""]];
disableSerialization;
if(!dialog || _type == "") exitWith {};
private _display = findDisplay 9900;
if(isNull _display) exitWith {};
private _items = _display getVariable ["items",[]];
private _shops = _display getVariable ["shops",[]];
private _cart = _display getVariable ["cart",[[],[]]];
private _selected_shop = _display getVariable ["selected_shop",[]];
if(_type == "CB") exitWith {
      private _index = lbCurSel 2100;
      ctrlSetText[1000, ""];
      if(_index != -1) then {
            private _data = call compile (lbData[2100, _index]);
            private _newItems = (_items select _index);
            private _preview = _data select 3;
            if(_preview != "") then {
                  [] call ClientModules_Shopsystem_fnc_setupCamera;
            };
            _display setVariable ["selected_shop", _data];
            if(_newItems select 0 == (_data select 0)) then {
                  lnbClear 1500;
                  private _temp = _newItems select 1;
                  {
                        private _id = _x select 0;
                        private _class = _x select 1;
                        private _item = [_class] call client_fnc_fetchItemType;
                        private _price = _x select 4;
                        private _tax_id = _x select 3;
                        private _tax = [_tax_id] call ClientModules_Company_fnc_invoice_getTax;
                        private _count = _x select 5;
                        private _mCount = _x select 6;
                        private _multiplayer = (_count/_mCount);
                        private _cDesc = switch true do {
                              case (_count == 0): {"Empty"};
                              case (0 < _multiplayer && _multiplayer < 0.1): {"Almost empty"};
                              case (0.1 <= _multiplayer && _multiplayer < 0.2): {"Not so many"};
                              case (0.2 <= _multiplayer && _multiplayer < 0.4): {"Not many"};
                              case (0.4 <= _multiplayer && _multiplayer < 0.6): {"Average"};
                              case (0.6 <= _multiplayer && _multiplayer < 0.8): {"Many"};
                              case (0.8 <= _multiplayer): {"Almost full"};
                        };
                        private _index = lnbAddRow [1500,[ _item select 1, format["$%1", _price], format["%2%1","%",_tax select 1], _cDesc]];
                        lnbSetPicture [1500, [_index, 0], _item select 2];
                        lnbSetData [1500, [_index, 0], str(_x)];
                  } forEach _temp;
                  if(count _temp != 0) then {lnbSetCurSelRow [1500, 0]};
            };
      };
};
if(_type == "LB") exitWith {
      private _index = lbCurSel 1500;
      if(_index != -1) then {
            private _data =  call compile (lnbData [1500, [_index, 0]]);
            private _id = _data select 0;
            private _class = _data select 1;
            private _item = [_class] call client_fnc_fetchItemType;
            private _price = _data select 4;
            private _tax_id = _data select 3;
            private _tax = [_tax_id] call ClientModules_Company_fnc_invoice_getTax;
            private _sell = _price * ORP_Shopsystem_Sell_Multiplayer * (((100 - (_tax select 1)) / 100));
            private _buy = _price * ORP_Shopsystem_Buy_Multiplayer * (((100 + (_tax select 1)) / 100));
            private _description = format["ID: %1\nName: %2\nTAX: %3%4\nPrice: $%5\n\nWith TAX:\nSells at: $%6\nBuys at: $%7\n", _id,  _item select 1, "%", _tax select 1, _price, round(_buy), round(_sell)];
            ctrlSetText[1000, _description];

            //preview
            private _preview = _selected_shop select 3;
            if(_preview != "") then {
                  [_preview] spawn ClientModules_Shopsystem_fnc_preview;
            };
      };
};
if(_type == "CART_RELOAD") exitWith {
      private _buy = _cart select 0;
      private _sell = _cart select 1;
      lbClear 1501;
      lbClear 1502;
      {
            private _item = [_x select 2] call client_fnc_fetchItemType;
            private _index = lbAdd[1501, format["%1x %2 - %3", _x select 1, _item select 1, _x select 0]];
            lbSetPicture [1501, _index, _item select 2];
      } forEach _buy;
      {
            private _item = [_x select 2] call client_fnc_fetchItemType;
            private _index = lbAdd[1502, format["%1x %2 - %3", _x select 1, _item select 1, _x select 0]];
            lbSetPicture [1502, _index, _item select 2];
      } forEach _sell;
};
if(_type == "BUY_ADD") exitWith {
      private _index = lbCurSel 1500;
      private _count = parseNumber(ctrlText 1400);
      if(_index != -1 && _count > 0) then {
            private _buy = _cart select 0;
            private _data =  call compile (lnbData [1500, [_index, 0]]);
            private _id = _data select 0;
            private _class = _data select 1;
            private _found = false;
            {
                  if(_x select 0 == _id) exitWith {
                        private _c = _x select 1;
                        _x set [1, (_c + _count)];
                        _found = true;
                  };
            } forEach _buy;
            if(!_found) then {
                  _buy pushBack [_id, _count, _class, (_selected_shop select 0)];
            };

            _cart set [0, _buy];
            _display setVariable ["cart",_cart];
            ["CART_RELOAD"] call ClientModules_Shopsystem_fnc_action;
      };
};
if(_type == "SELL_ADD") exitWith {
      private _index = lbCurSel 1500;
      private _count = parseNumber(ctrlText 1400);
      if(_index != -1 && _count > 0) then {
            private _sell = _cart select 1;
            private _data =  call compile (lnbData [1500, [_index, 0]]);
            private _id = _data select 0;
            private _class = _data select 1;
            private _realCount = [_class, false] call Client_fnc_countItems;
            private _found = false;
            {
                  if((_x select 0) == _id) exitWith {
                        _found = true;
                        private _c = _x select 1;
                        if(_realCount < (_c + _count)) then {
                              if(_realCount != 0) then {
                                    _x set [1, _realCount];
                              };
                        } else {
                              _x set [1, (_c + _count)];
                        };
                  };
            } forEach _sell;
            if(!_found && _realCount != 0) then {
                  if(_realCount < _count) then { _count = _realCount; };
                  _sell pushBack[_id, _count, _class, (_selected_shop select 0)];
            };

            _cart set [1, _sell];
            _display setVariable ["cart",_cart];
            ["CART_RELOAD"] call ClientModules_Shopsystem_fnc_action;
      };
};
if(_type == "BUY_REM") exitWith {
      private _index = lbCurSel 1501;
      if(_index != -1) then {
            private _buy = _cart select 0;
            _buy deleteAt _index;
            _cart set [0, _buy];
            _display setVariable ["cart",_cart];
            ["CART_RELOAD"] call ClientModules_Shopsystem_fnc_action;
      }
};
if(_type == "SELL_REM") exitWith {
      private _index = lbCurSel 1502;
      if(_index != -1) then {
            private _sell = _cart select 1;
            _sell deleteAt _index;
            _cart set [1, _sell];
            _display setVariable ["cart",_cart];
            ["CART_RELOAD"] call ClientModules_Shopsystem_fnc_action;
      }
};
if(_type == "PAY_OUT") exitWith {
      if(player getVariable["shopsystem_transaction", 0] != 0) exitWith {};
      private _buy = _cart select 0;
      private _sell = _cart select 1;
      ctrlEnable [1701, false];
      private _send = [];
      {
            private _tBuy = [];
            private _tSell = [];
            private _id = _x select 0;
            {
                  if(_id == (_x select 3)) then {
                        _tBuy pushBack [(_x select 0), (_x select 1)];
                  };
            } foreach _buy;
            {
                  if(_id == (_x select 3)) then {
                        _tSell pushBack [(_x select 0), (_x select 1)];
                  };
            } foreach _sell;
            if((count _tBuy) != 0 || (count _tSell) != 0) then {
                  _send pushBack [_id, [_tBuy, _tSell], player];
            };
      } foreach _shops;
      diag_log _send;
      player setVariable["shopsystem_transaction", (count _send)];
      {
            _x remoteExec ["ServerModules_Shopsystem_fnc_transaction", 2];
      } forEach _send;
      [_send] spawn {
            params["_send"];
            uiSleep (5 * _send);
            player setVariable["shopsystem_transaction", 0];
      };
};
