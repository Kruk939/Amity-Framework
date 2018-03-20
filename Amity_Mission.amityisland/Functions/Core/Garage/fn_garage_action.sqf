disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1005;
if(isNull _display) exitWith {};
params[["_type", ""]];
private _index = lbCurSel 1500;
private _data = [];
if(_index > -1) then {
      private _d = _display getVariable["data", []];
      private _id = parseNumber(lbData[1500, _index]);
      {
            if((_x select 0) == _id) exitWith {
                  _data = _x;
            };
      } forEach _d;
};
private _button_take = _display displayCtrl 1600;
if(_type == "LB") exitWith {
      if((count _data) != 0) then {
            _data params["_id", "_profile_id", "_faction_id", "_vehicle_id", "_class", "_vin", "_plate", "_status", "_hit", "_damage", "_fuel", "_color", "_material", "_rims", "_windows", "_lights", "_position", "_inventory", "_access_level"];
            private _display = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
            private _engine = getNumber(configFile >> "CfgVehicles" >> _class >> "enginePower");
            private _seats = getNumber(configFile >> "CfgVehicles" >> _class >> "transportSoldier");
            private _topSpeed = getText(configFile >> "CfgVehicles" >> _class >> "maxSpeed");
            private _canBeTaken = if(_damage < 0.8) then {
                  _button_take ctrlEnable true;
                  "Yes";
            } else {
                  _button_take ctrlEnable false;
                  "No";
            };
            private _text = format["Name: %1\nEngine: %2\nSeats: %3\nTop Speed: %4\nDamage: %5%6\nCan be taken: %7", _display, _engine, _seats, _topSpeed, round(_damage * 100), "%", _canBeTaken];
            ctrlSetText[1000, _text];
      };
};
if(_type == "SPAWN") exitWith {
      if((count _data) != 0) then {
            _data params["_id", "_profile_id", "_faction_id", "_vehicle_id", "_class", "_vin", "_plate", "_status", "_hit", "_damage", "_fuel", "_color", "_material", "_rims", "_windows", "_lights", "_position", "_inventory", "_access_level"];
            if(_damage < 0.8) then {
                  [_id, player] remoteExec["Server_fnc_spawnVehicle", 2];
            } else {
                  ["Your vehicle it is too damage", true] call Client_fnc_domsg;
            };
      };
};
if(_type == "REPAIR") exitWith {
      if((count _data) != 0) then {
            _data params["_id", "_profile_id", "_faction_id", "_vehicle_id", "_class", "_vin", "_plate", "_status", "_hit", "_damage", "_fuel", "_color", "_material", "_rims", "_windows", "_lights", "_position", "_inventory", "_access_level"];
            if(_damage >= 0.8) then {
                  [_id, player] remoteExec["Server_fnc_vehicleFullRepair", 2];
            };
      };
};
