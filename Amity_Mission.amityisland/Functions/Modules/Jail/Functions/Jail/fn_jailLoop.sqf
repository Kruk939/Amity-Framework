params[["_data", []]];

//data check
if(count _data == 0) exitWith {};
private _remaining = [_data] call ClientModules_Jail_fnc_getRemaining;
if(_remaining == 0) exitWith {};
private _jail = [player] call ClientModules_Jail_fnc_jail_getNearest;
if(isNull _jail) exitWith {};

//removing all jobs
player setVariable["jail_jailed", true, true];
player setVariable["jail_remaining_seconds", _remaining * 60];
[] call Client_fnc_stopWorking;
if(!isNil "ClientModules_PublicJobs_fnc_stop") then {
      [] call ClientModules_PublicJobs_fnc_stop;
};

//config variables
private _tickTime = getNumber(missionConfigFile >> "Jail" >> "Setup" >> "tickTime");
private _update = getNumber(missionConfigFile >> "Jail" >> "Setup" >> "updateEvery");
private _location = getArray(_jail >> "Locations" >> "position");
private _radius = getNumber(_jail >> "Locations" >> "radius");

//misc variables
private _escaped = true;
private _endTime = time + _remaining * 60;
private _tick = 0;
jail_var_active_sentences = _data;


//removing items
if(getNumber(_jail >> "Items" >> "clear") == 1) then {
      [] call Client_fnc_removeItems;
};

//adding items
if(getNumber(_jail >> "Items" >> "enable") == 1) then {
      private _head = getText(_jail >> "Items" >> "head");
      if(_head != "") then {
            player addHeadgear _head;
      };
      private _face = getText(_jail >> "Items" >> "face");
      if(_face != "") then {
            player addGoggles _face;
      };
      private _uniform = getText(_jail >> "Items" >> "uniform");
      if(_uniform != "") then {
            player forceAddUniform _uniform;
      };
      private _vest = getText(_jail >> "Items" >> "vest");
      if(_vest != "") then {
            player addVest _vest;
      };
      private _backpack = getText(_jail >> "Items" >> "backpack");
      if(_backpack != "") then {
            player addBackpack _backpack;
      };
      private _items = getArray(_jail >> "Items" >> "items");
      {
            _x params["_class", "_count"];
            private _i = 0;
            for [{}, {_i < _count}, { _i = _i + 1; }] do {
                player addItem _class;
            };
      } forEach _items;
};



while{(player getVariable["jail_jailed", false]) && _endTime > time && (count _data) != 0} do {
      if((player distance _location) > _radius) exitWith { _escaped = true; };
      uiSleep _tickTime;
      _tick = _tick + 1;
      if(_tick % _update == 0) then {
            private _first = _data select 0;
            private _minus = round(_tickTime * _update / 60);
            _first params["_id", "", "_timeLeft", "", "_reason"];
            if(_timeLeft < _minus) then {
                  private _remaining = _minus - _timeLeft;
                  if(count _data > 1) then {
                        private _second = _data select 1;
                        _second set[2, (_second select 0) - _remaining];
                  };
                  _data deleteAt 0;
                  [_id, 0] remoteExec["ServerModules_Jail_fnc_updateSentence", 2];
                  [["STR_JAIL_SENTENCE_SERVED", _reason], true] call Client_fnc_domsg;
            } else {
                  _timeLeft = _timeLeft - _minus;
                  _first set[2, _timeLeft];
                  [_id, _timeLeft] remoteExec["ServerModules_Jail_fnc_updateSentence", 2];
            };
      };
};
if(!_escaped) then {
      ["STR_JAIL_FINISH", true] call Client_fnc_domsg;
      if(getNumber(_jail >> "Release" >> "notify") == 1) then {
            //notify on release
      };
      if(getNumber(_jail >> "Release" >> "teleport") == 1) then {
            player setPos (getArray(_jail >> "Locations" >> "release"));
      };
} else {
      ["STR_JAIL_ESCAPED", true] call Client_fnc_domsg;
      ["onJailEscape", _data] call Client_fnc_eventCall;
      [] spawn {
            private _time = getNumber(missionConfigFile >> "Jail" >> "Setup" >> "escapedMarker");
            player setVariable["jail_escaped", true, true];
            uiSleep (_time / 2);
            //notify of escape
            uiSleep (_time / 2);
            player setVariable["jail_escaped", nil, true];
      };
};
[player getVariable["profile_id", -1], 0] remoteExec["ServerModules_Jail_fnc_updateStatus", 2];
player setVariable["jail_jailed", nil, true];
jail_var_active_sentences = [];
