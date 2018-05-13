params[["_plant", objNull]];
if(isNull _plant) exitWith {};


private _config = [typeOf _plant, "plant"] call ClientModules_Growing_fnc_plant_getConfig;
private _equipment = getArray(_config >> "equipment");
private _variables = getArray(_config >> "Growing" >> "variables");
private _every = getNumber(_config >> "Growing" >> "Grow" >> "every");
private _removeEvery = getNumber(_config >> "Growing" >> "Grow" >> "remove");
private _tickTime = getNumber(missionConfigFile >> "Growing" >> "Config" >> "tick");
private _tick = 0;
while{(getPos _plant select 2) < -0.2 && !isNull _plant} do {
      uiSleep _tickTime;
      _tick = _tick + 1;

      //growing
      if((_tick % _every) == 0) then {
            //checking equipment
            private _good = true;
            {
                  _x params["_class", "_distance", "_msg"];
                  if( count (nearestObjects [_plant, [_class], _distance]) == 0) exitWith {
                        _good = false;
                        [_msg, true] call Client_fnc_domsg;
                  };
            } forEach _equipment;

            private _pos = getPos _plant;
            private _add = 0;
            if(_good && (((([_plant] call ACE_map_fnc_determineMapLight) select 1) select 0) > 0.6)) then {
                  _add = getNumber(_config >> "Growing" >> "Grow" >> "good");
            } else {
                  _add = getNumber(_config >> "Growing" >> "Grow" >> "bad");
            };
            _pos params["", "", "_z"];
            _z = _z + _add;
            _pos set[2, _z];
            _plant setPos _pos;
      };

      //remove from variables
      if((_tick % _removeEvery) == 0) then {
            private _quality = _plant getVariable["quality", 0];
            {
                  _x params["_var", "", "_public", "_remove"];
                  private _val = _plant getVariable[_var, 0];
                  _val = _val - (random(_remove));
                  if(_val < 0) then { _val = 0; };
                  _plant setVariable[_var, _val, _public == 1];
                  private _level = [_plant, _var] call ClientModules_Growing_fnc_plant_getLevel;
                  private _limit = [_plant, _level] call ClientModules_Growing_fnc_plant_checkLevel;
                  if(count _limit != 0) then {
                        _limit params["", "", "_qAdd"];
                        _quality = _quality + _qAdd;
                  };
            } forEach _variables;
            _plant setVariable["quality", _quality];
      };
};
if(isNull _plant) exitWith {};
private _quality = _plant getVariable["quality", 0];
_plant setVariable["ready", true, true];
_plant setVariable["quality", _quality, true];
_plant setVariable["growing", false, true];
