params[["_target", objNull]];
if(isNull _target) exitWith {};
if(!(_target isKindOf 'Car' || _target isKindOf 'AIR' || _target isKindOf 'SHIP')) exitWith {};
private _config = (missionConfigFile >> "Lockpicking" >> "Vehicle");
private _item = getText(_config >> "Item" >> "itemClass");
private _count = [_item] call Client_fnc_countItems;
if(_count == 0 && _item != "") exitWith {
      ["STR_LOCKPICKING_NO_ITEM", true] call Client_fnc_domsg;
}; //you don't have item

if(_item != "") then {
      if(getNumber(_config >> "Item" >> "removeOnTry") == 1) then {
            player removeItem _item;
      };
};

private _min = getNumber(_config >> "Time" >> "min");
private _max = getNumber(_config >> "Time" >> "max");
private _random = round(_max - _min) + _min;

if(getNumber(_config >> "Sound" >> "enabled") == 1) then {
      private _sound_chance = getNumber(_config >> "Sound" >> "chance");
      if(_sound_chance <= round(100)) then {
            private _sound = (getArray(_config >> "Sound" >> "sounds")) call BIS_fnc_selectRandom;
            private _after = getNumber(_config >> "Sound" >> "after");
            [_target, _sound, _after] spawn {
                  params["_target", "_sound", "_after"];
                  uiSleep _after;
                  playSound3D [_sound, _target, false, getPosASL _target, 5, 1, 100];
            };
      };
};


private _onFinish = {
      (_this select 0) params[["_target", objNull], ["_config", configNull]];
      if(isNull _target || isNull _config) exitWith {};
      private _chance = getNumber(_config >> "chance");
      if(_chance < random(100)) exitWith {}; //failed
      private _item = getText(_config >> "Item" >> "itemClass");
      if(_item != "") then {
            if(getNumber(_config >> "Item" >> "removeOnSuccess") == 1) then {
                  player removeItem _item;
            };
      };

      amity_var_vehicles pushBack _target;
      [_target, 0, true] call Client_fnc_lock;
};
private _onFailure = {
      (_this select 0) params[["_target", objNull], ["_config", configNull]];
      if(isNull _target || isNull _config) exitWith {};
      private _item = getText(_config >> "Item" >> "itemClass");
      if(_item != "") then {
            if(getNumber(_config >> "Item" >> "removeOnFailed") == 1) then {
                  player removeItem _item;
            };
      };
};
[_random, [_target, _config], _onFinish, _onFailure, localize "STR_LOCKPICKING"] call Client_fnc_progressBar;
