params[["_target", objNull]];
private _ret = "";
if(isNull _target) exitWith { _ret; };
private _config = missionConfigFile >> "Evidence" >> "Config";
private _information = getArray(_config >> "information");
private _chance = random(100);
private _current = 0;
{
      _x params["_var", "_ch"];
      _current = _current + _ch;
      if(_chance < _current) exitWith {
            _ret = _target getVariable[_var, ""];
      };
} forEach _information;
_ret;
