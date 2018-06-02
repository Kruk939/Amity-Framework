params[["_target", objNull], ["_monit", false]];
private _text = "";
if(isNull _target) exitWith {_text;};
private _type = _target getVariable["evidence_type", ""];
private _time = _target getVariable["evidence_time", -1];
if(_type == "" || _time == -1) exitWith {  ["STR_EVIDENCE_NO_EVIDENCE", true] call Client_fnc_doMsg; _text; };
private _config = [_type] call ClientModules_Evidence_fnc_getConfig;
if(isNull _config) exitWith { [_target] call ClientModules_Evidence_fnc_clearEvidence; ["STR_EVIDENCE_NO_EVIDENCE", true] call Client_fnc_doMsg; _text; };
private _mainConfig = missionConfigFile >> "Evidence" >> "Config";
private _timePassed = serverTime - _time;
if(_timePassed > getNumber(_mainConfig >> "Time" >> "max")) exitWith { [_target] call ClientModules_Evidence_fnc_clearEvidence; ["STR_EVIDENCE_NO_EVIDENCE", true] call Client_fnc_doMsg; _text; };


//getting player name
private _name = _target getVariable["evidence_name", ""];
if(_name != "") then {
      if(_timePassed <= getNumber(_mainConfig >> "Time" >> "Data" >> "player")) then {
            private _localize = format["%1_PLAYER", getText(_config >> "msg_prefix")];
            if(!(isLocalized _localize)) then { _localize = "STR_EVIDENCE_TYPE_MSG_PLAYER"; };
            private _add = format[localize _localize, _name];
            _text = format["%1%2\n", _text, _add];
      };
};

//getting nearest
private _nearest = _target getVariable["evidence_nearest", []];
if(count _nearest != 0) then {
      if(_timePassed <= getNumber(_mainConfig >> "Time" >> "Data" >> "nearest")) then {
            private _localize = format["%1_NEAREST", getText(_config >> "msg_prefix")];
            if(!(isLocalized _localize)) then { _localize = "STR_EVIDENCE_TYPE_MSG_NEAREST"; };
            private _names = "";
            {
                  if(_forEachIndex == 0) then {
                        _names = format["%1", _x];
                  } else {
                        _names = format["%1, %2", _names, _x];
                  };
            } forEach _nearest;
            private _add = format[localize _localize, _names];
            _text = format["%1%2\n", _text, _add];
      };
};

//getting nearest count
private _nearest_count = _target getVariable["evidence_nearest_count", -1];
if(_nearest_count != -1) then {
      if(_timePassed <= getNumber(_mainConfig >> "Time" >> "Data" >> "nearestCount")) then {
            private _localize = format["%1_NEAREST_COUNT", getText(_config >> "msg_prefix")];
            if(!(isLocalized _localize)) then { _localize = "STR_EVIDENCE_TYPE_MSG_NEAREST_COUNT"; };
            private _add = format[localize _localize, _nearest_count];
            _text = format["%1%2\n", _text, _add];
      };
};
if(_monit) then {
      [_text, true] call Client_fnc_doMsg;
      [_target] call ClientModules_Evidence_fnc_clearEvidence;
};
_text;
