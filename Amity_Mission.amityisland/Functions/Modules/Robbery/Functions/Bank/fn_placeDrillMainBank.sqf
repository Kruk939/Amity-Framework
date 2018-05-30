params[["_target", objNull]];
if(isNull _target) exitWith {};
private _config = (missionConfigFile >> "Robbery" >> "MainBank");
if(typeOf _target != getText(_config >> "Safe" >> "safe")) exitWith {};

private _requiredFaction = getArray(_config >> "requiredFactions");
private _can = true;
if((count _requiredFaction) != 0) then {
      private _count = count([_requiredFaction select 0] call Client_fnc_factionGetActivePlayers);
      if(_count < (_requiredFaction select 1)) then { _can = false; };
};
if(!_can) exitWith {
      ["STR_ROBBERY_ROB_SHOP_NO_REQUIRED_FACTION", true] call Client_fnc_doMsg;
}; //not enough faction members

private _bank = [] call ClientModules_Robbery_fnc_getNearestMainBank;
if(isNull _bank) exitWith {};
_bank setVariable ["bis_disabled_Door_vault", 1, true];
_bank setVariable ["bis_disabled_Door_17", 1, true];
_target setVariable["bank", _bank];




private _min = getNumber(_config >> "Drill" >> "Time" >> "min");
private _max = getNumber(_config >> "Drill" >> "Time" >> "max");
private _time = round(random(_max - _min) + _min);
private _pos = getArray(_config >> "Drill" >> "position");

private _onFinish = {
      params["_drill", "_target"];

      //checking drill and cooldown
      if(isNull _drill) exitWith {};
      private _config = (missionConfigFile >> "Robbery" >> "MainBank");
      private _cooltime = getNumber(_config >> "cooldown");
      private _lastRobbery = _target getVariable["robbery_last", time - _cooltime - 1];
      if(_lastRobbery + _cooltime > time && _cooltime > 0) exitWith {
            ["STR_ROBBERY_ROB_MAIN_BANK_LAST_ROBBED", true] call Client_fnc_doMsg;
      };
      _target setVariable["robbery_last", time, true];

      //animating doors
	_target setVariable ["bis_disabled_Door_safe", 1, true];
      _target animate["Door_safe", 1];


      //place cases in vault
      private _min = getNumber(_config >> "Reward" >> "min");
      private _max = getNumber(_config >> "Reward" >> "max");
      private _class = getText(_config >> "Reward" >> "Case" >> "item");
      private _chance = getNumber(_config >> "Reward" >> "Case" >> "chance");
      private _positions = getArray(_config >> "Reward" >> "Case" >> "positions");
      private _spawn = getArray(_config >> "Reward" >> "Case" >> "spawn");
      private _cases = [];
      {
            if(_chance <= random(100)) then {
                  private _value = round(random(_max - _min) + _min);
                  private _case = _class createVehicle _spawn;
                  _case attachTo[_target, _x];
                  _case setVariable["value", _value, true];
                  _cases pushBack _case;
            };
      } forEach _positions;
      _target setVariable["cases", _cases];

      //resetting bank
      private _resetAfter = getNumber(_config >> "Reset" >> "after");
      [_drill, _target, _resetAfter, _config] spawn {
            params["", "_target", "_resetAfter", "_config"];
            private _i = 0;
            private _messages = getArray(_config >> "Reset" >> "messages");
            while{_resetAfter > _i} do {
                  {
                        _x params["_m", "_t"];
                        if(_t == _i) exitWith {
                              [_m, true] call Client_fnc_doMsg;
                        };
                  } forEach _messages;

                  _i = _i + 1;
                  uiSleep 1;
            };
            [_target] spawn ClientModules_Robbery_fnc_mainBankReset;
      };


};
private _ret = [_target, _pos, _time, _onFinish] call ClientModules_Robbery_fnc_placeDrill;
if(_ret) then {
      if((getNumber(_config >> "Notify" >> "enabled")) != 0) then {
            [_bank, _config] spawn {
                  params["_target", "_config"];
                  uiSleep (getNumber(_config >> "Notify" >> "after"));
                  [getPos _target, "atm"] call ClientModules_Robbery_fnc_notify;
            };
      };

      if((getNumber(_config >> "Sound" >> "enabled")) != 0 && (getNumber(_config >> "Sound" >> "chance")) <= round(100)) then {
            [_bank, _config] spawn {
                  params["_target", "_config"];
                  private _min = getNumber(_config >> "Sound" >> "Time" >> "min");
                  private _max = getNumber(_config >> "Sound" >> "Time" >> "max");
                  private _time = round(random(_max - _min) + _min);
                  uiSleep _time;
                  private _sounds = getArray(_config >> "Sound" >> "sounds");
                  if((count _sounds) != 0) then {
                        private _sound = _sounds call BIS_fnc_selectRandom;
                        playSound3D [_sound, _target, false, getPosASL _target, 5, 1, 200];
                  };
            };
      };
};
