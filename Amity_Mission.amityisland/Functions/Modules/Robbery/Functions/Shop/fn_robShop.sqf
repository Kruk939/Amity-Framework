params[["_target", objNull], ["_shop_id", -1]];
if(isNull _target) exitWith {};
private _config = (missionConfigFile >> "Robbery" >> "Shop");
private _cooltime = getNumber(_config >> "Time" >> "_cooltime");

if(_target getVariable["robbery_inprogress", false]) exitWith {}; //is being robbed

private _lastRobbery = _target getVariable["robbery_last", time - _cooltime];
if(_lastRobbery + _cooltime > time) exitWith {}; //last robbed

//call event
private _nearest = [];
{
      if(_x getVariable["profile_id", -1] != -1 && alive _x) then {
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
      while{_time > 0} do {
            uiSleep 1;
            _time = _time - 1;

            //checkings
            if(getNumber(_config >> "Items" >> "primary") != 0 && primaryWeapon player == "") exitWith {
                  _robbed = false;
                  ["STR_ROBBERY_ROB_SHOP_FAILED_NO_WEAPON", true] call Client_fnc_doMsg;
            };
            if(getNumber(_config >> "Items" >> "secondary") != 0 && secondaryWeapon player == "") exitWith {
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
                        private _holder = _holderClass createVehicle (getPos player);
                        [_holder, _shop_id, true, (_randomItem select 1)] remoteExec["ServerModules_Shop_fnc_addRandomItemsFromShopToCargo", 2];
                        _holderReward = true;
                  };
            };

            if(_holderReward) then {
                  [["STR_ROBBERY_ROB_SHOP_ROBBED_WITH_ITEMS", _reward], true] call Client_fnc_doMsg;
            } else {
                  [["STR_ROBBERY_ROB_SHOP_ROBBED", _reward], true] call Client_fnc_doMsg;
            };

            private _nearest = [];
            {
                  if(_x getVariable["profile_id", -1] != -1 && alive _x) then {
                        _nearest pushBack _x;
                  };
            } forEach allPlayers;
            ["onShopRobbed", [_target, player, _nearest]] call Client_fnc_eventCall;
            _target setVariable["robbery_last", time, true];
      };
};
