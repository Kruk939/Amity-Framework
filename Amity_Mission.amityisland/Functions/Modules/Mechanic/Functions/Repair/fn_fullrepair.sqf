params[["_target", objNull]];
if((player getVariable ["module_mechanic", 0]) == 0) exitWith { hint "You cannot use that item"; };

private _kit = getText(missionConfigFile >> "Mechanic" >> "Items" >> "mechanicKit");
if(_kit != "") then {
      if(([_kit, false] call Client_fnc_countItems) == 0) exitWith {}; //does not have item
};
if(isNull _target) exitWith {};
private _damageArr = (getAllHitpointsDamage _target) select 2;
private _damage = damage _target;
{
      _damage = _damage + _x;
} foreach _damageArr;
if(_damage == 0) exitWith {
      ["Car is fully fixed!", true] spawn Client_fnc_domsg;
};
private _time = 5 + _damage * 5;
private _onFinish = {
      (_this select 0) params ["_target"];
      [_target, 0] remoteExec["setDamage", 2];
      ["You have fixed a car!", true] spawn Client_fnc_domsg;
};
private _onFailure = {
      ["Cancelled", true] spawn Client_fnc_domsg;
};
[_time, [_target],_onFinish,_onFailure,"Fixing car..."] call Client_fnc_progressBar;
