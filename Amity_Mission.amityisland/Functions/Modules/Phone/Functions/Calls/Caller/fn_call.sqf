params[["_number", ""]];
if(_number == "") exitWith {};
if(!([_number] call ClientModules_Phone_fnc_checkNumber)) exitWith { hint "Number is not correct!"; };
if(count (player call TFAR_fnc_radiosList) isEqualTo 0) exitWith { hint "You don't have phone!"; };
if(player getVariable["phone_calling", false]) exitWith {};
if(player getVariable["phone_disabled", false]) exitWith {};


private _group = player getVariable["phone_call_group", []];
private _freq = player getVariable["phone_current_freq", ""];
if((count _group) == 0) then {
      _group pushBack player;
      _freq = [] call ClientModules_Phone_fnc_generateFreq;
};
if(_freq == "") then {
      _freq = [] call ClientModules_Phone_fnc_generateFreq;
};
[_number, _group, player, _freq] remoteExec ["ServerModules_Phone_fnc_call", 2];
