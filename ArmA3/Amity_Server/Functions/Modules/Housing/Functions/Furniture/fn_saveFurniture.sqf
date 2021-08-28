params[["_furniture", objNull]];
if(isNull _furniture) exitWith {};
private _id = _furniture getVariable["house_furniture_id", -1];
if(_id == -1) exitWith {};
private _house = _furniture getVariable["house_object", objNull];
private _h_data = [_house] call ServerModules_Housing_fnc_getHouse;
if((count _h_data) == 0) exitWith {};

private _is_cargo = [_furniture] call ClientModules_Housing_fnc_isCargo;
private _cargo = [];
if(_is_cargo) then {
      _cargo = [_furniture] call Client_fnc_getCargo;
};
private _position = getPosATL _furniture;
private _dir = getDir _furniture;
[0, format["housing_update_furniture_id:%1:%2:%3:%4", _id, _position, _dir, _cargo]] call ExternalS_fnc_ExtDBquery;
_h_data params["", "", "", "", "", "", "_furns"];

{
      if((_x select 0) == _id) exitWith {
            _x set[2, _position];
            _x set[3, _dir];
            _x set[5, _cargo];
      };
} forEach _furns;
