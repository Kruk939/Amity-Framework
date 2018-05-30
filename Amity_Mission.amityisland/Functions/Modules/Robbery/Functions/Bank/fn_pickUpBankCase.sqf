params[["_target", objNull]];
if(isNull _target) exitWith {};
private _config = (missionConfigFile >> "Robbery" >> "MainBank");
private _min = getNumber(_config >> "Reward" >> "Case" >> "Time" >> "min");
private _max = getNumber(_config >> "Reward" >> "Case" >> "Time" >> "max");
private _time = round(random(_max - _min) + _min);

private _onFinish = {
            (_this select 0) params[["_target", objNull], "_config"];
            if(isNull _target) exitWith {};
            private _config = (missionConfigFile >> "Robbery" >> "MainBank");
            if(typeOf _target != getText(_config >> "Reward" >> "Case" >> "item")) exitWith {};
            private _value = _target getVariable["value", 0];
            if(_value == 0) exitWith {};
            [_value, (getNumber(_config >> "Reward" >> "cases") == 1)] call ClientModules_Robbery_fnc_giveReward;
            deleteVehicle _target;
};
private _onFailure = {};
[_time, [_target, _config], _onFinish, _onFailure, ""] call Client_fnc_progressBar;
