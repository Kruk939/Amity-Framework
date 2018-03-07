params[["_id", -1]];
if(_id == -1) exitWith {};
{
      if(_x getVariable["id", -1] == _id) exitWith {
            deleteVehicle _x;
      };
} forEach vehicles;
private _queryString = format["core_garage_delete:%1", _id];
private _query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
