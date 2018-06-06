params[["_vehicle",objNull],["_type",""]];
if(isNull _vehicle || _type == "") exitWith {};
private _onFinish = {
      (_this select 0) params ["_target", "_name","_config"];
      private _success = (getText(_config >> "Message" >> "success")) call BIS_fnc_localize;
      private _remove = getNumber(_config >> "remove") == 1;
      [_target,_name] remoteExec ["ClientModules_Mechanic_fnc_fixSelection", _target];
      private _anim =  getText(missionConfigFile >> "Mechanic" >> "Config" >> "animation");
      [player, _anim, 1] call ace_common_fnc_doAnimation;
      [_success, true] spawn Client_fnc_domsg;
      if(_remove) then {
            player removeItem (getText(_config >> "item"));
      };
};

private _onFailure = {
      Hint "Cancelled";
      private _anim =  getText(missionConfigFile >> "Mechanic" >> "Config" >> "animation");
      [player, _anim, 1] call ace_common_fnc_doAnimation;
};

private _configs = "true" configClasses (missionConfigFile >> "Mechanic" >> "Repair");
private _config = configNull;
{
      private _conf = _x;
      if(_type == getText(_conf >> "variable")) exitWith {_config = _conf; };
      if(_type IN getArray(_conf >> "selection")) exitWith {_config = _conf; };
} forEach _configs;

if(isNull _config) exitWith {};
private _item = getText(_config >> "item");
if(_item != "" && ([_item] call Client_fnc_countItems) == 0) exitWith {
      [getText(_config >> "Message" >> "noItem"), true] call Client_fnc_domsg;
}; //no item
private _variable = getArray(_config >> "variables");
private _can = true;
if(count _variable != 0) then {
      _variable params["_name", "_level"];
      if(player getVariable[_name, -1] < _level) then { _can = false; };
};
if(!_can) exitWith {
      [getText(_config >> "Message" >> "noVariable"), true] call Client_fnc_domsg;
}; //no level

private _locations = getArray(_config >> "locations");
_can = false;
if(count _locations != 0) then {
      {
            _x params["_pos", "_distance"];
            if(_vehicle distance _pos < _distance) exitWith { _can = true; };
      } forEach _locations;
} else {
      _can = true;
};
if(!_can) exitWith {
      [getText(_config >> "Message" >> "noLocation"), true] call Client_fnc_domsg;
}; //no in location


private _damageArray = getAllHitPointsDamage _vehicle;
private _hitpointsArray = _damageArray select 0;
private _hitpointsDamageArray = _damageArray select 2;

switch(getNumber(_config >> "type")) do {
      case 0: {};
      case 1: {
            private _max = 0;
            private _name = "";
            private _selections = getArray(_config >> "selection");
            {
                  if(toLower(_x) IN _selections) then {
                        private _damage = _hitpointsDamageArray select _forEachIndex;
                        if(_damage > _max) then { _max = _damage; _name = _x; };
                  };
            } forEach _hitpointsArray;
            if(_name != "" && _max != 0) then { _type = _name; };
      };
      case 2: {
            private _max = 0;
            private _name = "";
            private _selections = getArray(_config >> "selection");
            {
                  private _hitpoint = _x;
                  private _index = _forEachIndex;
                  {
                        if(_hitpoint find toLower(_x) != -1) then {
                              private _damage = _hitpointsDamageArray select _index;
                              if(_damage > _max) then { _max = _damage; _name = _hitpoint; };
                        };
                  } forEach _selections;
            } forEach _hitpointsArray;
            if(_name != "" && _max != 0) then { _type = _name; };
      };
};
if(_type IN (getArray(_config >> "selection"))) then {
      private _time = getNumber(_config >> "time");
      private _progress = (getText(_config >> "Message" >> "progress")) call BIS_fnc_localize;
      [_time, [_vehicle, _type, _config],_onFinish,_onFailure,_progress] call Client_fnc_progressBar;
} else {
      ["STR_MECHANIC_REPAIR_NOTHING_TO_FIX", true] call Client_fnc_domsg;
};
