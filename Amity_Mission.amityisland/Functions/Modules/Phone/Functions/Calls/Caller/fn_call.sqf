params[["_number", ""]];
if(_number == "") exitWith {};
if(!([_number] call ClientModules_Phone_fnc_checkNumber)) exitWith { hint "Number is not correct!"; };
if(count (player call TFAR_fnc_radiosList) isEqualTo 0) exitWith { hint "You don't have phone!"; };
if(_number == (player getVariable["phone_number", ""])) exitWith {};
if(player getVariable["phone_calling", false]) exitWith {};
if(player getVariable["phone_disabled", false]) exitWith {};
private _limit = getNumber(missionConfigFile >> "Phone" >> "Limits" >> "group");

private _group = player getVariable["phone_call_group", []];
private _freq = player getVariable["phone_current_freq", ""];
if((count _group) == 0) then {
      _group pushBack player;
      _freq = [] call ClientModules_Phone_fnc_generateFreq;
};
if(_freq == "") then {
      _freq = [] call ClientModules_Phone_fnc_generateFreq;
};
if((count _group) > _limit) exitWith {
      [["You reach your limit of: %1 users in phone call", _limit], true] call Client_fnc_domsg;
};
phone_var_last_calls pushBack _number;
[_number, _group, player, _freq] remoteExec ["ServerModules_Phone_fnc_call", 2];
