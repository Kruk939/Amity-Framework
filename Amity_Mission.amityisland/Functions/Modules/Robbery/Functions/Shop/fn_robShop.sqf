params[["_target", objNull], ["_shop_id", -1]];
if(isNull _target) exitWith {};
private _config = (missionConfigFile >> "Robbery" >> "Shop");
private _cooltime = getNumber(_config >> "Time" >> "cooltime");

if(_target getVariable["robbery_inprogress", false]) exitWith {
      ["STR_ROBBERY_ROB_SHOP_INPROGRESS", true] call Client_fnc_doMsg;
}; //is being robbed

private _lastRobbery = _target getVariable["robbery_last", time - _cooltime - 1];
if(_lastRobbery + _cooltime > time && _cooltime > 0) exitWith {
      ["STR_ROBBERY_ROB_SHOP_LAST_ROBBED", true] call Client_fnc_doMsg;
}; //last robbed

if((getNumber(_config >> "Items" >> "primary") != 0 && primaryWeapon player == "") && (getNumber(_config >> "Items" >> "secondary") != 0 && secondaryWeapon player == "")) exitWith {
      ["STR_ROBBERY_ROB_SHOP_FAILED_NO_WEAPON", true] call Client_fnc_doMsg;
};

private _requiredFaction = getArray(_config >> "requiredFactions");
private _can = true;
if((count _requiredFaction) != 0) then {
      private _count = count([_requiredFaction select 0] call Client_fnc_factionGetActivePlayers);
      if(_count < (_requiredFaction select 1)) then { _can = false; };
};
if(!_can) exitWith {
      ["STR_ROBBERY_ROB_SHOP_NO_REQUIRED_FACTION", true] call Client_fnc_doMsg;
}; //not enough faction members

//call event
private _nearest = [];
{
      if(_x getVariable["profile_id", -1] != -1 && alive _x && _target distance _x < 20) then {
            _nearest pushBack _x;
      };
} forEach allPlayers;
["onShopBeingRobbed", [_target, player, _nearest]] call Client_fnc_eventCall;

[_target, _shop_id, _config] spawn {
      params["_target", "_shop_id", "_config"];
      _target setVariable["robbery_inprogress", true, true];

      private _min = getNumber(_config >> "Time" >> "min");
      private _max = getNumber(_config >> "Time" >> "max");
      private _maxDistance = getNumber(_config >> "maxDistance");
      private _time = round(random(_max - _min) + _min);
      private _robbed = true;

      private _soundTime = -1;
      private _minSound = getNumber(_config >> "Sound" >> "Time" >> "min");
      private _maxSound = getNumber(_config >> "Sound" >> "Time" >> "max");
      if(getNumber(_config >> "Sound" >> "enabled") == 1 && getNumber(_config >> "Sound" >> "chance") >= random(100)) then {
            _soundTime = _time - round(random(_maxSound - _minSound) + _minSound);
            if(_soundTime < 0) then { _soundTime = 1; };
      };
      private _notifyAfter = _time - getNumber(_config >> "Notify" >> "after");

      while{_time > 0} do {
            uiSleep 1;
            _time = _time - 1;

            if(_notifyAfter == _time) then {
                  [getPos _target, "shop"] call ClientModules_Robbery_fnc_notify;
            };

            if(_time == _soundTime) then {
                  private _sounds = getArray(_config >> "Sound" >> "sounds");
                  if((count _sounds) != 0) then {
                        private _sound = _sounds call BIS_fnc_selectRandom;
                        playSound3D [_sound, _target, false, getPosASL _target, 5, 1, 200];
                  };
            };

            //checkings
            if((getNumber(_config >> "Items" >> "primary") != 0 && primaryWeapon player == "") && (getNumber(_config >> "Items" >> "secondary") != 0 && secondaryWeapon player == "")) exitWith {
                  _robbed = false;
                  ["STR_ROBBERY_ROB_SHOP_FAILED_NO_WEAPON", true] call Client_fnc_doMsg;
            };
            if(player getVariable["Ace_captives_isHandcuffed", false] || player getVariable["Ace_captives_isZiptied", false] || player getVariable["Ace_captives_isSurrendering", false]) exitWith {
                  _robbed = false;
                  ["STR_ROBBERY_ROB_SHOP_FAILED_SURRENDER", true] call Client_fnc_doMsg;
            };
            if(player getVariable["ACE_isUnconscious", false]) exitWith {
                  _robbed = false;
                  ["STR_ROBBERY_ROB_SHOP_FAILED_UNCONSCIOUS", true] call Client_fnc_doMsg;
            };
            if(player distance _target > _maxDistance) exitWith {
                  _robbed = false;
                  ["STR_ROBBERY_ROB_SHOP_FAILED_DISTANCE", true] call Client_fnc_doMsg;
            };

            //monits
            if(_time > 60) then {
                  hintSilent format[localize "STR_ROBBERY_ROB_SHOP_TIME_MINUTES", round(_time / 60)];
            } else {
                  hintSilent format[localize "STR_ROBBERY_ROB_SHOP_TIME_SECONDS", _time];
            };
      };
      _target setVariable["robbery_inprogress", nil, true];
      if(_robbed) then {
            private _randomItem = [];
            private _shops = getArray(_config >> "Reward" >> "randomItemsFrom");
            private _minReward = getNumber(_config >> "Reward" >> "min");
            private _maxReward = getNumber(_config >> "Reward" >> "max");
            private _cases = (getNumber(_config >> "Reward" >> "cases")) != 0;
            private _holderReward = false;
            private _reward = round(random(_maxReward - _minReward) + _minReward);
            [_reward, _cases] call ClientModules_Robbery_fnc_giveReward;
            {
                  if(_shop_id == (_x select 0)) exitWith { _randomItem = _x; };
            } forEach _shops;

            if(count _randomItem != 0) then {
                  private _holderClass = getText(_config >> "Reward" >> "holderClass");
                  if(_holderClass != "") then {
                        private _holder = createVehicle [_holderClass, (getPosATL player), [], 0, "CAN_COLLIDE"];
                        [_holder, _shop_id, true, (_randomItem select 1)] remoteExec["ServerModules_Shop_fnc_addRandomItemsFromShopToCargo", 2];
                        _holderReward = true;
                        private _removeAfter = getNumber(_config >> "Reward" >> "removeAfter");
                        [_holder, _removeAfter, _shop_id] spawn {
                              params["_holder", "_time", "_shop_id"];
                              uiSleep _time;
                              [_holder, _shop_id, true] remoteExec ["serverModules_Shop_fnc_handleRefil", 2];
                        };
                  };
            };

            if(_holderReward) then {
                  [["STR_ROBBERY_ROB_SHOP_ROBBED_WITH_ITEMS", _reward], true] call Client_fnc_doMsg;
            } else {
                  [["STR_ROBBERY_ROB_SHOP_ROBBED", _reward], true] call Client_fnc_doMsg;
            };

            private _nearest = [];
            {
                  if(_x getVariable["profile_id", -1] != -1 && alive _x && _target distance _x < 20) then {
                        _nearest pushBack _x;
                  };
            } forEach allPlayers;
            ["onShopRobbed", [_target, player, _nearest]] call Client_fnc_eventCall;
            _target setVariable["robbery_last", time, true];
      };
};
