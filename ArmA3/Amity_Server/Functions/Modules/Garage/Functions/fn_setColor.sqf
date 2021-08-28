params[["_target", objNull],["_color", ""], ["_material", ""]];
private _id = _target getVariable["id", -1];
if(_id == -1) exitWith {};
if(_color == "" || _material == "") exitWith {};
[0, format["garage_update_color:%1:%2:%3", _id, _color, _material]] call ExternalS_fnc_ExtDBquery;
