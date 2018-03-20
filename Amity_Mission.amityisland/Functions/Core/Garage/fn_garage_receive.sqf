disableSerialization;
if(!dialog) exitWith {};
private _display = findDisplay 1005;
if(isNull _display) exitWith {};
private _garage = _this;

if((count _garage) != 0) then {
      private _level = player getVariable["faction_access_level", -1];
      _display setVariable["data", _garage];
      {
            _x _data params["_id", "_profile_id", "_faction_id", "_vehicle_id", "_class", "_vin", "_plate", "_status", "_hit", "_damage", "_fuel", "_color", "_material", "_rims", "_windows", "_lights", "_position", "_inventory", "_access_level"];

            if(typeName _access_level == "SCALAR") then {
                  if(_access_level <= _level) then {
                        private _index = lbAdd [1500, format["%1 [%2] - %3", _id, _plate, getText(configFile >> "CfgVehicles" >> _class >> "displayName")]];
                        lbSetData[1500, _index, str(_id)];
                  };
            } else {
                  private _index = lbAdd [1500, format["%1 [%2] - %3", _id, _plate, getText(configFile >> "CfgVehicles" >> _class >> "displayName")]];
                  lbSetData[1500, _index, str(_id)];
            };
      } forEach _garage;
};
