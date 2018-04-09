params[["_type",""]];
disableSerialization;
if(!dialog || _type == "") exitWith {};
private _display = findDisplay 9900;
if(isNull _display) exitWith {};
private _shop = _display getVariable ["shop",[]];
private _categories = _display getVariable["categories", []];
private _category = _display getVariable ["category", []];
private _items = _display getVariable ["items",[]];

private _sellMultiplayer = getNumber(missionConfigFile >> "Shop" >> "sell");
private _buyMultiplayer = getNumber(missionConfigFile >> "Shop" >> "buy");
private _cart = _display getVariable ["cart",[[],[]]];


if(_type == "CB") exitWith {
      private _index = lbCurSel 2100;
      if(_index < 0) exitWith {};
      private _id = parseNumber (lbData[2100, _index]);
      if(_id < 0) exitWith {};
      private _category = [];
      private _items = [];
      {
            _x params["_i", "", "_it"];
            if(_i == _id) exitWith {
                  _category = _x;
                  _items = _it;

            };
      } forEach _categories;
      _display setVariable["category", _category];
      _display setVariable["items", _items];
      lnbClear 1500;
      {
            _x params["_id", "_class", "_type", "_price", "_stock"];
            private _item = [_class] call client_fnc_fetchItemType;
            if(count _item != 0) then {
                  _item params ["", "_display", "_picture", "_desc"];
                  private _index = lnbAddRow[1500, [_display, format["$%1", _price], "0%", str(_stock)]];
                  lnbSetPicture [1500, [_index, 0], _picture];
                  lnbSetData [1500, [_index, 0], str(_id)];
                  lnbSetData [1500, [_index, 1], _type];
            };
      } forEach _items;
      if(count _items != 0) then {
            lnbSetCurSelRow [1500, 0];
      };
};
if(_type == "LB") exitWith {
      private _index = lbCurSel 1500;
      if(_index != -1) then {
            private _id = parseNumber(lnbData [1500, [_index, 0]]);
            if(_id == -1) exitWith {};
            private _item = [];
            {
                  if((_x select 0) == _id) exitWith {
                        _item = _x;
                  };
            } forEach _items;
            if(count _item != 0) then {
                  _item params["_id", "_class", "_type", "_price", "_stock", "_prev"];
                  private _i = [_class] call client_fnc_fetchItemType;
                  if(count _item != 0) then {
                        _i params ["", "_display", "", "_desc"];
                        private _description = format["ID: %1\nName: %2In stock: %3\nBuys at: $%4\nSells at $%5\nDescription: %6", _id,  _display, _stock, (_buyMultiplayer * _price), (_sellMultiplayer * _price), _desc];
                        ctrlSetText[1000, _description];
                        if(!Shop_var_preview && _prev != "") then {
                              [] call ClientModules_Shop_fnc_setupCamera;
                              [_class, _prev] call ClientModules_Shop_fnc_preview;
                        } else {
                              if(_prev == "") then {
                                    [] call ClientModules_Shop_fnc_terminateCamera;
                              };
                        };
                  };
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
