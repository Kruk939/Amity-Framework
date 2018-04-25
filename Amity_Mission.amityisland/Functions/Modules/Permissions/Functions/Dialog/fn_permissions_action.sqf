params[["_type", ""]];
if(_type == "" || !dialog) exitWith {};
private _display = findDisplay 3000;
if(isNull _display) exitWith {};


private _members = _display getVariable["members", []];
private _changed = _display getVariable["changed", []];
private _faciton_id = _display getVariable["faction_id", -1];

private _fnc_getLevel = {
      params[["_id", -1]];
      private _ret = 0;
      if(_id == -1) exitWith { _ret; };
      private _found = false;
      {
            if(_id == (_x select 0)) exitWith {
                  _found = true;
                  _ret = _x select 1;
            };
      } forEach _changed;
      if(!_found) then {
            {
                  if(_id == (_x select 0)) exitWith {
                        _ret = _x select 2;
                  };
            } forEach permissions_var_active;
      };
      _ret;
};
private _fnc_checkLevel = {
      private _level = round(parseNumber(ctrlText 1400));
      if(_level < 1) then { _level = 1; };
      if(_level > 10) then { _level = 10; };
      _level;
};

private _fnc_apply = {
      private _index = lbCurSel 1500;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[1500, _index]);
      private _level = [] call _fnc_checkLevel;

      private _found = false;
      {
            if(_id == (_x select 0)) exitWith {
                  _x set[1, _level];
                  _found = true;
            };
      } forEach _changed;
      if(!_found) then {
            _changed pushBack [_id, _level];
      };
      _display setVariable["changed", _changed];
};


if(_type == "ACCESS") exitWith {
      private _level = [] call _fnc_checkLevel;
      ctrlSetText[1400, str(_level)];
      lbClear 1501;
      {
            _x params["", "", "", "_short", "_full", "", "", "_access", "", "", "", "", ""];
            if(_access >= _level) then {
                  lbAdd[1501, format["%1 %2", _short, _full]];
            };
      } forEach _members;

};
if(_type == "APPLY") exitWith {
      [] call _fnc_apply;
};
if(_type == "LB") exitWith {
      private _index = lbCurSel 1500;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[1500, _index]);
      {
            _x params["_i", "_var", ""];
            if(_id == _i) exitWith {
                  {
                        if(_var == (_x select 1)) exitWith {
                              ctrlSetText[1000, (_x select 2)];
                              ctrlSetText[1400, str([_id] call _fnc_getLevel)];
                        };
                  } forEach permissions_var_all;
            };
      } forEach permissions_var_active;
      ["ACCESS"] call ClientModules_Permissions_fnc_permissions_action;
};
if(_type == "REVERT") exitWith {
      _display setVariable["changed", []];
      ["LB"] call ClientModules_Permissions_fnc_permissions_action;
};
if(_type == "SAVE") exitWith {
      [_changed, _faciton_id] remoteExec["ServerModules_Permissions_fnc_update", 2];
      closeDialog 0;
};
