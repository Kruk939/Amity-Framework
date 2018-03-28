params[["_key", -1], ["_key_data", []], "_function", ["_name", ""]];
if(_key == -1 || isNil "_function" || !((typeName _function) IN ["CODE", "STRING"])) exitWith {};
if(_name == "") then {
      _name = [10] call Client_fnc_generateString;
};
_key_data params[["_shift", objNull], ["_ctrl", objNull], ["_alt", objNull], ["_disp", objNull]];
private _found = false;
{
      if((_x select 0) == _key) exitWith {
            private _arr = _x select 1;
            _arr pushBack [_name, [_shift, _ctrl, _alt, _disp], _function];
            _found = true;
      };
} forEach amity_var_keys;
if(!_found) then {
      amity_var_keys pushBack [_key, [[_name, [_shift, _ctrl, _alt, _disp], _function]]];
};
_name;
