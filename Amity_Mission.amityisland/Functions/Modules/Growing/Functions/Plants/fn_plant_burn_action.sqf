params[["_target", objNull], ["_force", false]];
if(isNull _target) exitWith {};
if(!([_target] call ClientModules_Growing_fnc_is_plant)) exitWith {};
if(!([] call ClientModules_Growing_fnc_has_burnEquipment)) exitWith {};

private _onFinish = {
      (_this select 0) params["_target", "_force"];
      if(isNull _target) exitWith {};
      [_target, _force] call ClientModules_Growing_fnc_plant_burn;
};
private _onFailure = {

};
[getNumber(missionConfigFile >> "Growing" >> "Config" >> "Fire" >> "Time" >> "settingUp"), [_target, _force], _onFinish, _onFailure, "STR_Growing_PLANT_BURNING" call BIS_fnc_localize] call Client_fnc_progressBar;
