disableSerialization;
params[["_type", ""]];
if(!dialog || _type == "") exitWith {};
private _display = findDisplay 9910;
if(isNull _display) exitWith {};

private _fnc_find = {
      params[["_id", -1]];
      private _list = _display getVariable["list", []];
      private _item = [];
      {
            if(_id == (_x select 0)) exitWith {
                  _item = _x;
            };
      } forEach _list;
      _item;
};

if(_type == "LB") exitWith {
      private _index = lbCurSel 1500;
      if(_index < 0) exitWith {};
      private _id = parseNumber(lbData[1500, _index]);
      if(_id == -1) exitWith {};
      private _item = [_id] call _fnc_find;
      if(count _item == 0) exitWith {};
      _item params["_id", "_class", "", "_amount", "_time", "", "_needed"];
      private _i = [_class] call Client_fnc_fetchItem;
      if(count _i == 0) exitWith {};
      _i params["", "_display", "", ""];
      private _text = format["Name: %1\nAmount: %2\nTime: %3s\nNeeded:\n", _display, _amount, _time];

      {
            _x params["", "_class", "", "_amount"];
            private _i = [_class] call Client_fnc_fetchItem;
            private _count = [_class] call Client_fnc_countItems;
            _text = format["%1        %2x %3(%4)\n", _text, _amount, (_i select 1), _count];
      } forEach _needed;
      _text = format["%1\nYou can craft: %2", _text, [_needed] call ClientModules_Crafting_fnc_craftingMax];
      ctrlSetText[1300, _text];
};
if(_type == "AMOUNT") exitWith {
      private _index = lbCurSel 1500;
      if(_index < 0) exitWith {};
      private _id = parseNumber(lbData[1500, _index]);
      if(_id == -1) exitWith {};
      private _item = [_id] call _fnc_find;
      if(count _item == 0) exitWith {};
      _item params["", "", "", "_amount", "", "", "_needed"];
      private _max = [_needed] call ClientModules_Crafting_fnc_craftingMax;
      private _amount = parseNumber(ctrlText 1400);
      if(_amount <= 0) then { _amount = 0; };
      _amount = floor(_amount);
      if(_amount > _max) then { _amount = _max; };
      ctrlSetText[1400, str(_amount)];
};
if(_type == "CRAFT") exitWith {
      private _index = lbCurSel 1500;
      if(_index < 0) exitWith {};
      private _id = parseNumber(lbData[1500, _index]);
      if(_id == -1) exitWith {};
      private _amount = parseNumber(ctrlText 1400);
      if(_amount <= 0) exitWith {};
      private _item = [_id] call _fnc_find;
      [_item, _amount] call ClientModules_Crafting_fnc_craftItem;
};
