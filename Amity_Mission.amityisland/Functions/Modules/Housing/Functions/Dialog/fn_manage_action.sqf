params[["_type", ""]];
if(_type == "") exitWith {};
disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1110000;
if(isNull _display) exitWith { closeDialog 0; };
private _house = _display getVariable["house", objNull];
private _house_id = _display getVariable["house_id", -1];
private _profile_id = _display getVariable["profile_id", -1];
private _faction_id = _display getVariable["faction_id", -1];
private _modules = _display getVariable["modules", []];
private _furnitures = _display getVariable["furnitures", []];

private _is_bought_module = {
      private _ret = [];
      {
            if(_this == (_x select 1)) exitWith { _ret = _x; };
      } forEach _modules;
      _ret;
};

if(_type == "MOD_ACCESS") exitWith {
      private _access = round(parseNumber(ctrlText 1400));
      if(_access < 0) then { _access = 0; };
      if(_access > 10) then { _access = 10; };
      ctrlSetText[1400, str(_access)];
};

if(_type == "LB_MOD_SEL") exitWith {
      private _idc = 1500;
      private _index = lbCurSel _idc;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[_idc, _index]);
      if(_id == -1) exitWith {};
      private _module = [_id] call ClientModules_Housing_fnc_getModule;
      _module params["_i", "", "", "_n", "", "_price"];
      private _mod = _i call _is_bought_module;
      private _bought = if(count _mod == 0) then { localize "STR_NO"; } else { localize "STR_YES"; };
      if(count _mod == 0) then {
            ctrlSetText[1000, format[localize "STR_HOUSING_DIALOG_MANAGE_MODULE_INFO", _n, _bought, _price]];
            ctrlSetText[1400, str(0)];
            ctrlEnable [1400, false];
            ctrlSetText[1600, localize "STR_HOUSING_DIALOG_BUY"];
      } else {
            private _access = _mod select 4;
            if(typeName _access == "OBJECT") then { _access = 0; };
            ctrlSetText[1000, format[localize "STR_HOUSING_DIALOG_MANAGE_MODULE_INFO_BOUGHT", _n, _bought, _access]];
            ctrlEnable [1400, true];
            ctrlSetText[1600, localize "STR_HOUSING_DIALOG_MANAGE_CHANGE"];
            ctrlSetText[1400, str(_access)];
      };
};
if(_type == "MOD_ACTION") exitWith {
      private _idc = 1500;
      private _index = lbCurSel _idc;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[_idc, _index]);
      if(_id == -1) exitWith {};
      private _module = [_id] call ClientModules_Housing_fnc_getModule;
      _module params["_i", "", "", "", "", ""];
      private _mod = _i call _is_bought_module;
      if(count _mod == 0) then {
            //buy module
      } else {
            private _access = round(parseNumber(ctrlText 1400));
            if(_access == 0) then { _access = -1; };
            private _m = [(_mod select 0), _house] call ClientModules_Housing_fnc_getModuleObject;
            _m setVariable["house_module_access", _access, true];
            [_m] remoteExec["ServerModules_Housing_fnc_moduleUpdate", 2];
            ["Level changed", true] call Client_fnc_domsg;
      };


};
