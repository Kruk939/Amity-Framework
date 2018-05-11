params[["_type", ""]];
disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 13002;
if(isNull _display) exitWith { closeDialog 0; };
private _target = _display getVariable["target", objNull];
private _jail_id = _display getVariable["jail_id", -1];
private _data = _display getVariable["data", []];
if(isNull _target || _jail_id == -1) exitWith { closeDialog 0; };

private _findLocker = {
      params[["_profile_id", -1]];
      private _ret = [];
      if(_profile_id == -1) exitWith { _ret; };
      {
            if((_x select 1) == _profile_id) exitWith {
                  _ret = _x;
            };
      } forEach _data;
      _ret;
};


if(_type == "LB") exitWith {
      ctrlSetText[1000, ""];
      private _index = lbCurSel 1500;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[1500, _index]);
      if(_id <= 0) exitWith {};
      private _locker = [_id] call _findLocker;
      if(count _locker != 0) then {
            _locker params["", "_profile_id", "", "_first", "_last"];
            private _player = [_profile_id] call Client_fnc_getPlayerByProfile;
            private _online = if(!isNull(_player)) then { localize "STR_YES"; } else { localize "STR_NO"; };
            private _in_jail = localize "STR_NO";
            if(!isNull(_player)) then { if(_player getVariable["jail_jailed", false]) then { _in_jail = localize "STR_YES"; }; };
            ctrlSetText[1000, format[localize "STR_JAIL_DIALOG_LOCKERS_TEXT_INFO", _first, _last, _online, _in_jail]];
      };
};
if(_type == "OPEN_LB") exitWith {
      private _index = lbCurSel 1500;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[1500, _index]);
      if(_id <= 0) exitWith {};
      private _locker = [_id] call _findLocker;
      if(count _locker != 0) then {
            _locker params["", "_profile_id", "", "", ""];
            if([_target, _profile_id] call ClientModules_Jail_fnc_openLocker) then {
                  closeDialog 0;
            } else {
                  ["STR_JAIL_LOCKER_ALREADY_OPEN", true] call Client_fnc_domsg;
            };
      };
};
if(_type == "VIEW") exitWith {

};
if(_type == "OPEN_CB") exitWith {
      private _index = lbCurSel 2100;
      if(_index == -1) exitWith {};
      private _id = parseNumber(lbData[2100, _index]);
      if(_id <= 0) exitWith {};
      if([_target, _id] call ClientModules_Jail_fnc_openLocker) then {
            closeDialog 0;
      } else {
            ["STR_JAIL_LOCKER_ALREADY_OPEN", true] call Client_fnc_domsg;
      };
};
if(_type == "FORCE") exitWith {
      [_target] call ClientModules_Jail_fnc_closeLocker;
};
