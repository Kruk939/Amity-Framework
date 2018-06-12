disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1035;
if(isNull _display) exitWith {};
params[["_type", ""]];
private _index = lbCurSel 1500;
private _garage = [];
if(_index > -1) then {
      private _d = _display getVariable["garage", []];
      private _id = parseNumber(lbData[1500, _index]);
      {
            if((_x select 0) == _id) exitWith {
                  _garage = _x;
            };
      } forEach _d;
};
private _fnc_access = {
      disableSerialization;
      private _access = parseNumber(ctrlText 1400);
      if(_access < 0) then { _access = 0; };
      if(_access > 10) then { _access = 10; };
      _access;
};
private _fnc_setCombo = {
      disableSerialization;
      private _profile_id = _this;
      if(typeName _profile_id == "OBJECT") then {
            lbSetCurSel[2100, 0];
      } else {
            private _size = lbSize 2100;
            private _i = 1;
            for [{}, {_i < _size}, { _i = _i + 1; }] do {
                private _id = parseNumber(lbData[2100, _i]);
                diag_log _id;
                if(_id == _profile_id) exitWith {
                     lbSetCurSel[2100, _i];
                };
            };
      };
};
if(_type == "LB") exitWith {
      if((count _garage) != 0) then {
            _garage params["_id", "_profile_id", "_faction_id", "_vehicle_id", "_class", "_vin", "_plate", "_status", "_hit", "_damage", "_fuel", "_color", "_material", "_rims", "_windows", "_lights", "_position", "_inventory", "_access_level"];
            private _display = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
            private _engine = getNumber(configFile >> "CfgVehicles" >> _class >> "enginePower");
            private _seats = getNumber(configFile >> "CfgVehicles" >> _class >> "transportSoldier");
            private _topSpeed = getText(configFile >> "CfgVehicles" >> _class >> "maxSpeed");
            private _text = format["Name: %1\nEngine: %2\nSeats: %3\nTop Speed: %4\nDamage: %5%6\n", _display, _engine, _seats, _topSpeed, round(_damage * 100), "%"];
            if(typeName _access_level == "OBJECT") then {
                  _access_level = 0;
            };
            _profile_id call _fnc_setCombo;
            ctrlSetText[1400, str(_access_level)];
            ctrlSetText[1000, _text];
      };
};
if(_type == "ACCESS") exitWith {
      ctrlSetText[1400, str([] call _fnc_access)];
};
if(_type == "SAVE") exitWith {
      if((count _garage) != 0) then {
            private _id = _garage select 0;
            private _access = call _fnc_access;
            private _owner = parseNumber(lbData[2100, lbCurSel 2100]);
            [_id, _owner, _access] remoteExecCall ['Server_fnc_factionSaveVehicle', 2];
            _garage set[18, _access];
            if(_owner == -1) then {
                  _owner = objNull;
            };
            _garage set[1, _owner];
            private _d = _display getVariable["garage", []];
            private _index = -1;
            {
                  if((_x select 0) == _id) exitWith {
                        _index = _forEachIndex;
                  };
            } foreach _d;
            if(_index != -1) then {
                  _d set[_index, _garage];
                  _display setVariable["garage", _d];
            };
      };
};
if(_type == "EXIT") exitWith {
      [(_display getVariable["faction_id", -1])] call Client_fnc_faction_members_open;
};
