params[["_target", objNull], ["_force", false]];
if(isNull _target) exitWith {};
if(!([_target] call ClientModules_Drugs_fnc_is_plant)) exitWith {};
if(!([] call ClientModules_Drugs_fnc_has_burnEquipment)) exitWith {};

private _onFinish = {
      (_this select 0) params["_target", "_force"];
      if(isNull _target) exitWith {};
      [_target, _force] call ClientModules_Drugs_fnc_plant_burn;
};
private _onFailure = {

};
[10, [_target, _force], _onFinish, _onFailure, "STR_DRUGS_PLANT_BURNING" call BIS_fnc_localize] call Client_fnc_progressBar;
