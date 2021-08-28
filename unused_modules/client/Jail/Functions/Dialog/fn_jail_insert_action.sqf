params[["_type", ""]];
disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 13001;
if(isNull _display) exitWith { closeDialog 0; };
private _target = _display getVariable["target", objNull];
if(isNull _target) exitWith { closeDialog 0; };
private _jail = [] call ClientModules_Jail_fnc_jail_getNearest;
if(isNull _jail) exitWith { ["STR_JAIL_NO_NEAR", true] call Client_fnc_domsg; };

if(_type == "REASON") exitWith {
      private _reason = ctrlText 1401;
      private _reason = (_reason splitString ":") joinstring "-";
      if(count _reason > 200) then { _reason = [_reason, 0, 199] call BIS_fnc_trimString};
      ctrlSetText[1401, _reason];
};
if(_type == "SENTENCE") exitWith {
      private _min = getNumber(_jail >> "Sentence" >> "min");
      private _max = getNumber(_jail >> "Sentence" >> "max");
      private _sentence = parseNumber(ctrlText 1400);
      if(_sentence < 0) then { _sentence = 0; };
      if(_sentence < _min && _min != -1) then { _sentence = _min; };
      if(_sentence > _max && _max != -1) then { _sentence = _max; };
      if(_sentence > 999) then { _sentence = 999; };
      ctrlSetText[1400, str(_sentence)];
};
if(_type == "PROCESS") exitWith {
      private _ret = [_target, parseNumber(ctrlText 1400), parseNumber(lbData[2100, lbCurSel 2100]), ctrlText 1401] call ClientModules_Jail_fnc_jailPlayer;
      if(_ret) then { closeDialog 0; };
};
