params["_player",["_first", false], ["_function", ""]];
if(isNil "_player") exitWith {};
private _profile_id = -1;
private _ret = objNull;
if(typeName _player == "SCALAR") then {
      _profile_id = _player;
};
if(typeName _player == "OBJECT") then {
      if(!isNull _player) then {
            _profile_id = _player getVariable["profile_id", -1];
            _ret = _player;
      };
};
if(_profile_id <= 0) exitWith {};
private _cash = 0;
if(_first) then {
      _cash = getNumber(missionConfigFile >> "Amity" >> "Setup" >> "Start" >> "cash");
};
private _exists = true;
private _bankaccount = format["PL%1", [8, "0123456789"] call Client_fnc_generateString];
while {_exists} do {
      _exists = (([format["core_bank_exists:%1", _bankaccount], 2] call ExternalS_fnc_ExtDBasync) select 0) select 0;
      _bankaccount = format["PL%1", [8, "0123456789"] call Client_fnc_generateString];
};
private _query = format["core_bank_insert:%1:%2:%3", _profile_id, _bankaccount, _cash];
[0, _query] call ExternalS_fnc_ExtDBquery;
if(!isNull _ret && _function != "") exitWith {
      _bankaccount remoteExec [_function, _ret];
};
_bankaccount;
