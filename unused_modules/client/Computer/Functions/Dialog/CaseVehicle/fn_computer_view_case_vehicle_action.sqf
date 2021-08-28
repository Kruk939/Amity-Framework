disableSerialization;
params[["_type", ""]];
if(_type == "") exitWith {};
if(!dialog) exitWith {};
private _display = findDisplay 15007;
if(isNull _display) exitWith { closeDialog 0; };
private _id = _display getVariable["id", -1];
private _data = _display getVariable["data", []];

if(_type == "SAVE") exitWith {
      //permision check
      if(!(["computer_case_update"] call Client_fnc_checkPermission)) exitWith { ["STR_CORE_PERMISSION_ACCESS_DENIED", true] call Client_fnc_domsg; };

      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _wID = parseNumber(lbData[2100, _index]);
      [_id, _wID, true] remoteExecCall["ServerModules_Computer_fnc_caseUpdateLevel", 2];
      [] call ClientModules_Computer_fnc_openLast;
};
if(_type == "CLOSE") exitWith {
      _data params["", "", "", "", "", "_closed_by", "", "", ""];
      if(typeName _closed_by == "OBJECT") then {
            [_id, player getVariable["profile_id", -1], true] remoteExecCall["ServerModules_Computer_fnc_caseSetStatus", 2];
      } else {
            [_id, -1, false] remoteExecCall["ServerModules_Computer_fnc_caseSetStatus", 2];
      };
      [] call ClientModules_Computer_fnc_openLast;
};
