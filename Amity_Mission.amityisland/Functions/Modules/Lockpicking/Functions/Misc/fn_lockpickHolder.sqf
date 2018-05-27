params[["_target", objNull]];
if(isNull _target) exitWith {};
private _config = (missionConfigFile >> "Lockpicking" >> "Vehicle");
private _item = getText(_config >> "Item" >> "itemClass");
private _count = [_item] call Client_fnc_countItems;
if(_count == 0 && _item != "") exitWith {}; //you don't have item

if(_item != "") then {
      if(getNumber(_config >> "Item" >> "removeOnTry") == 1) then {
            player removeItem _item;
      };
};

private _min = getNumber(_config >> "Time" >> "min");
private _max = getNumber(_config >> "Time" >> "max");
private _random = round(_max - _min) + _min;

private _onFinish = {
      (_this select 0) params[["_target", objNull], ["_config", configNull]];
      if(isNull _target || isNull _config) exitWith {};
      private _chance = getNumber(_config >> "chance");
      if(_chance > random(100)) exitWith {}; //failed
      private _item = getText(_config >> "Item" >> "itemClass");
      if(_item != "") then {
            if(getNumber(_config >> "Item" >> "removeOnSuccess") == 1) then {
                  player removeItem _item;
            };
      };
      _target setVariable["locked", false, true];
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
[_random, [_target, _config], _onFinish, _onFailure, "Lockpicking"] call Client_fnc_progressBar;
