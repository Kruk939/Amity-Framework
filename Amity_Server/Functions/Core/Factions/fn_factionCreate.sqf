params[["_player", objNull], ["_type", ""], ["_short_name", ""], ["_full_name", ""]];
private _types = ["company", "gang", "permanent"];
if(isNull _player || _type == "" || _short_name == "" || _full_name == "" || !(_type IN _types)) exitWith {};
private _profile_id = _player getVariable["profile_id", -1];
if(_profile_id == -1) exitWith {};

private _query = format["core_faction_insert:%1:%2:%3:%4", _profile_id, _type, _short_name, _full_name];
private _response = [0, _query] call ExternalS_fnc_ExtDBquery;
