params[["_plant", objNull], ["_level", []], ["_monit", false]];
private _ret = [];
if(isNull _plant) exitWith { _ret; };
_level params["_variable", "_levels"];
private _amount = _plant getVariable[_variable, 0];
if(_amount <= 0) then { _amount = 0; };

{
      _x params["_min", "_max", "", ""];
      if(_min < _amount && _max <= _amount) exitWith {
            _ret = _x;
      };
} forEach _levels;
if(count _ret == 0) then {
      _ret = _levels select (count _levels - 1);
};

if(_monit) then {
      _ret params["", "", "", "_text"];
      [_text, true] call Client_fnc_domsg;
};
_ret;
