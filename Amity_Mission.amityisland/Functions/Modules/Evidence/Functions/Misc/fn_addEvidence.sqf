params[["_target", objNull], "_params", ["_type", ""]];
if(isNull _target) exitWith {};
private _config = [_type] call ClientModules_Evidence_fnc_getConfig;
if(isNull _config) exitWith {};
private _mainConfig = missionConfigFile >> "Evidence" >> "Config";
private _chance_add = getNumber(_mainConfig >> "Chance" >> "add");
if(_chance_add > random(100)) exitWith {};
_target setVariable["evidence_type", _type, true];
_target setVariable["evidence_time", serverTime, true];
private _playerIndex = getNumber(_config >> "Params" >> "player");
private _nearestIndex = getNumber(_config >> "Params" >> "nearest");

private _player = _params select _playerIndex;
private _name = _player getVariable["name", ""];
private _chance_player = getNumber(_mainConfig >> "Chance" >> "player");
if(_chance_player <= random(100)) then { _target setVariable["evidence_name", _name, true]; };

private _nearest = _params select _nearestIndex;
private _new_nearest = [];
private _chance_nearest = getNumber(_mainConfig >> "Chance" >> "nearest");
{
      if(_chance_nearest <= random(100)) then {
            _new_nearest pushBack (_x getVariable["name", ""]);
      };
} forEach _nearest;
if(count _new_nearest != 0) then {
      _target setVariable["evidence_nearest", _new_nearest, true];
};
if(count _nearest != 0) then {
      _target setVariable["evidence_nearest_count", count _nearest, true];
};
