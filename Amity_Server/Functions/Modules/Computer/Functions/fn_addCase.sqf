params[["_data", []], ["_vehicle", false]];
if(count _data == 0) exitWith {};
_data params["_id", "_officer_id", "_wanted_id", "_reason", ["_closed_by", -1]];
if(_closed_by == -1) then { _closed_by = ""; };
private _query = if(_vehicle) then { "computer_insert_wanted_vehicles"; } else { "computer_insert_wanted_profiles"; };
[0, format["%1:%2:%3:%4:%5:%6", _query, _id, _officer_id, _wanted_id, _reason, _closed_by]] call ExternalS_fnc_ExtDBquery;
