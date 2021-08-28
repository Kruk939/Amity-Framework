params[["_case_id", -1], ["_profile_id", -1], ["_vehicle", false]];
if(_case_id == -1) exitWith {};
if(_profile_id == -1) then { _profile_id = ""; };
private _query = if(_vehicle) then { "computer_update_wanted_vehicles_closed_by" } else { "computer_update_wanted_profile_closed_by"; };
[0, format["%1:%2:%3", _query, _case_id, _profile_id]] call ExternalS_fnc_ExtDBquery;
