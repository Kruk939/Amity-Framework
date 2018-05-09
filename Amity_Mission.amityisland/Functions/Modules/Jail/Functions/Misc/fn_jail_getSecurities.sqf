params["_var"];
private _ret = [];
if(isNil "_var") exitWith {_ret};
switch(typeName _var) do {
      case "SCALAR": {
            _ret = configProperties[missionConfigFile >> "Jail" >> "Security", format["(getArray(_x) select 0) == '%1'", _var]];
      };
      case "STRING": {
            _ret = configProperties[missionConfigFile >> "Jail" >> "Security", format["_x == '%1' || (getArray(_x) select 1) == '%2'", _var, _var]];
      };
};
if(count _ret != 0) then {
      _ret = _ret select 0;
};
_ret;
