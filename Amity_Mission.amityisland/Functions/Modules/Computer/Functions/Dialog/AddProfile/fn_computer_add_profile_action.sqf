disableSerialization;
params[["_type", ""]];
if(_type == "") exitWith {};
if(!dialog) exitWith {};
private _display = findDisplay 15004;
if(isNull _display) exitWith { closeDialog 0; };
private _id = _display getVariable["id", -1];

if(_type == "REASON") exitWith {
      private _text = ctrlText 1400;
      _text = (_text splitString ":") joinString "";
      if(count _text > 200) then { _text = [_text, 0, 199] call BIS_fnc_trimString; };
      ctrlSetText[1400, _text];
};
if(_type == "ADD") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _wID = parseNumber(lbData[2100, _index]);
      [[_id, player getVariable["profile_id", -1], _wID, ctrlText 1400], false] remoteExecCall["ServerModules_Computer_fnc_addCase", 2];
      [] call ClientModules_Computer_fnc_openLast;
};
if(_type == "ADD_CLOSE") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _wID = parseNumber(lbData[2100, _index]);
      [[_id, player getVariable["profile_id", -1], _wID, ctrlText 1400, player getVariable["profile_id", -1]], false] remoteExecCall["ServerModules_Computer_fnc_addCase", 2];
      [] call ClientModules_Computer_fnc_openLast;
};
