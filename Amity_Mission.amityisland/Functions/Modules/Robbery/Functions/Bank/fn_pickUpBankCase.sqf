params[["_target", objNull]];
if(isNull _target) exitWith {};
private _config = (missionConfigFile >> "Robbery" >> "MainBank");
if(typeOf _target != getText(_config >> "Reward" >> "Cases" >> "item")) exitWith {};
private _value = _target getVariable["value", 0];
if(_value == 0) exitWith {};
[_value, (getNumber(_config >> "Reward" >> "cases") == 1)] call ClientModules_Robbery_fnc_giveReward;
