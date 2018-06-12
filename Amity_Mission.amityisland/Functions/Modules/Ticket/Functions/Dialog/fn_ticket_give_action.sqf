params[["_type", ""]];
if(_type == "") exitWith {};
if(!dialog) exitWith {};
disableSerialization;
private _display = findDisplay 14000;
if(isNull _display) exitWith {};
private _target = _display getVariable["target", objNull];
if(isNull _target) exitWith { closeDialog 0; };
private _preset = _display getVariable["preset", -1];
private _presetConfig = [_preset, "id"] call ClientModules_Ticket_fnc_getPrest;

private _fnc_minMax = {
      params[["_value", -1], ["_min", -1], ["_max", -1]];
      if(_value < 0) then { _value = 0; };
      if(_value > 999999) then { _value = 999999; };
      if(_value < _min && _min != -1) then { _value = _min; };
      if(_value > _max && _max != -1) then { _value = _max; };
      _value;
};


if(_type == "CB") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[2100, _index]);
      _display setVariable["preset", _id];
      _presetConfig = [_id, "id"] call ClientModules_Ticket_fnc_getPrest;
      ctrlSetText[1402, getText(_presetConfig >> "reason")];
      ["POINTS"] call ClientModules_Ticket_fnc_ticket_give_action;
      ["AMOUNT"] call ClientModules_Ticket_fnc_ticket_give_action;
};
if(_type == "POINTS") exitWith {
      private _amount = parseNumber(ctrlText 1400);
      private _min = -1;
      private _max = -1;
      if(!isNull _presetConfig) then {
            if(getNumber(_presetConfig >> "Points" >> "enabled") == 1) then {
                  _min = getNumber(_presetConfig >> "Points" >> "min");
                  _max = getNumber(_presetConfig >> "Points" >> "max");
            };
      };
      _amount = [_amount, _min, _max] call _fnc_minMax;
      ctrlSetText[1400, str(_amount)];
};
if(_type == "AMOUNT") exitWith {
      private _amount = parseNumber(ctrlText 1401);
      private _min = -1;
      private _max = -1;
      if(!isNull _presetConfig) then {
            if(getNumber(_presetConfig >> "Amount" >> "enabled") == 1) then {
                  _min = getNumber(_presetConfig >> "Amount" >> "min");
                  _max = getNumber(_presetConfig >> "Amount" >> "max");
            };
      };
      _amount = [_amount, _min, _max] call _fnc_minMax;
      ctrlSetText[1401, str(_amount)];
};
if(_type == "REASON") exitWith {
      private _text = ctrlText 1402;
      _text = (_text splitString ":") joinString "-";
      if(count _text > 200) then { _text = [_text, 0, 199] call BIS_fnc_trimString; };
      ctrlSetText[1402, _text];
};
if(_type == "SEND") exitWith {
      private _points = parseNumber(ctrlText 1400);
      private _amount = parseNumber(ctrlText 1401);
      private _reason = ctrlText 1402;
      [player, [_amount, _reason, _points, _preset]] remoteExecCall["ClientModules_Ticket_fnc_ticket_receive_open", _target];
      closeDialog 0;
};
