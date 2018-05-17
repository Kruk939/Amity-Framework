params[["_id", -1], ["_level", -1], ["_vehicle", false]];
if(_id == -1) exitWith {};
private _query = if(_vehicle) then { "computer_update_wanted_vehicles_wanted" } else { "computer_update_wanted_profile_wanted"; };
[0, format["%1:%2:%3", _query, _id, _level]] call ExternalS_fnc_ExtDBquery;
