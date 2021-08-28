params[["_vehicle", objNull]];
private _pos = getPos player;
private _time = time;
while{(_time + 30) > time && (_pos distance (getPos player) < 20) && (vehicle player) == player} do {};
[_vehicle] call Client_fnc_detachVehicle;
