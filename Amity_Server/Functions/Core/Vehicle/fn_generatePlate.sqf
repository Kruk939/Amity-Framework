params[["_prefix", "ZS"]];
private _left = 7 - (count _prefix);
private _plate = toUpper format["%1%2", _prefix, [_left] call Client_fnc_generateString];
while{[_plate] call Server_fnc_vehicleExistsPlate} do {
      _plate = toUpper format["%1%2", _prefix, [_left] call Client_fnc_generateString];
};
_plate;
