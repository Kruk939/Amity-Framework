params[["_target", objNull], ["_sentence", 0], ["_security", 1], ["_reason", ""]];
if(isNull _target || _sentence <= 0) exitWith {};
if(player getVariable["jail_put_player", -1] < getNumber(missionConfigFile >> "Jail" >> "Setup" >> "Permissions" >> "jailPlayer")) exitWith {};

private _jail = [player] call ClientModules_Jail_fnc_jail_getNearest;
if(isNull _jail) exitWith { false; };
private _entry = getArray(_jail >> "Locations" >> "entryPoint");
private _good = true;
if(count _entry != 0) then {
      _entry params["_pos", "_dist"];
      if(_target distance _pos > _dist) exitWith {
            _good = false;
      };
};
if(!_good) exitWith { _good; };

private _minTime = getNumber(_jail >> "Sentence" >> "min");
if(_sentence < _minTime && _minTime != -1) exitWith {
      [["STR_JAIL_SENTENCE_TOO_LOW_FOR_PRISON", _minTime], true] call Client_fnc_domsg;
      _good = false;
      _good;
};
private _maxTime = getNumber(_jail >> "Sentence" >> "max");
if(_maxTime < _sentence && _maxTime != -1) exitWith {
      [["STR_JAIL_SENTENCE_TOO_HIGH_FOR_PRISON", _maxTime], true] call Client_fnc_domsg;
      _good = false;
      _good;
};

private _securities = getArray(_jail >> "Sentence" >> "securities");
if(count _securities != 0 && !(_security IN _securities)) exitWith {
      [["STR_JAIL_SENTENCE_SECURITY_NOT_MATCH", _maxTime], true] call Client_fnc_domsg;
      _good = false;
      _good;
};


[_target, getNumber(_jail >> "id"), player getVariable["profile_id", -1], _sentence, _security, _reason] remoteExecCall["ServerModules_Jail_fnc_jailPlayer", 2];
_good;
