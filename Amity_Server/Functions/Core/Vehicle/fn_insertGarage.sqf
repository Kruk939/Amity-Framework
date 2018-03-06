params[["_player", objNull], ["_data", []], ["_faction", objNull]];

//basic check
if(isNull _player) exitWith {};
if((count _data) == 0) exitWith {};
private _player_id = _player getVariable["profile_id", -1];
if(_player_id == -1) exitWith {};

private _query = "core_garage_insert_class";
_data params["_class", ["_color", ""], ["_material", ""], ["_rims", ""], ["_windows", 0], ["_lights", 0]];
if(typeName _class == "SCALAR") then { _query = "core_garage_insert_id"; };

private _vin = "AF45Z-";
private _i = 0;
private _sum = 0;
for [{}, {_i < 3}, {_i = _i + 1}] do {
      if(_i != 2) then {
            private _1 = round(random 9);
            private _2 = round(random 9);
            private _3 = round(random 9);
            private _4 = round(random 9);
            _sum = _sum + _1 + _2 + _3 + _4;
            _vin = format["%1%2%3%4%5%6", _vin, _1, _2, _3, _4, "-"];
      } else {
            _vin = format["%1%2%3%4%5", _vin, (_sum % 5), floor(_sum / 10), round(_sum / 6), (_sum % 3)];
      };
};
if(isNull _faction) then { _faction = ""; } else { _player_id = ""; };
private _plate = toUpper format["%1%2","ZS", [5] call Client_fnc_generateString];
_query = format["%1:%2:%3:%4:%5:%6", _query, _player_id, _faction, _class, _vin, _plate];
_query = format["%1:%2:%3:%4:%5:%6", _query, _color, _material, _rims, _windows, _lights];
[0, _query] call ExternalS_fnc_ExtDBquery;
