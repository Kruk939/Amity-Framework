params[["_type", ""]];
disableSerialization;

//basic check
if(!dialog) exitWith {};
private _display = findDisplay 666600;
if(isNull _display) exitWith {};

//checking variables
private _target = _display getVariable ["target",objNull];
if(isNull _target) exitWith {};

if(_type == "DESC") exitWith {
      private _text = ctrlText 1400;
      _text = (_text splitString ":") joinString "-";
      ctrlSetText[1400, _text];
};
if(_type == "DAYS") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith { ctrlSetText[1401, "0"]; };
      private _id = parseNumber(lbData[2100, _index]);
      if(_id == -1) exitWith { ctrlSetText[1401, "0"]; };
      private _input = [_id, round(parseNumber(ctrlText 1401))] call ClientModules_Licenses_fnc_checkDays;
      ctrlSetText[1401, str(_input)];
};
if(_type == "LB") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith { ctrlSetText[1401, "0"]; };
      private _id = parseNumber(lbData[2100, _index]);
      if(_id == -1) exitWith { ctrlSetText[1401, "0"]; };
      private _license = [_id] call ClientModules_Licenses_fnc_get;
      _license params["", "", "", "", "_max_days"];
      ctrlSetText[1401, str(_max_days)];
};
if(_type == "GIVE") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith { ctrlSetText[1401, "0"]; };
      private _id = parseNumber(lbData[2100, _index]);
      if(_id == -1) exitWith { ctrlSetText[1401, "0"]; };
      private _days = round(parseNumber(ctrlText 1401));
      private _description = ctrlText 1400;
      [_target getVariable["profile_id", -1], _id, _description, _days, player getVariable["faction_id", -1]] remoteExec["ServerModules_Licenses_fnc_giveLicense", 2];
      closeDialog 0;
};
