params[["_target", objNull]];
if(isNull _target) exitWith {};
if(!(_target IN amity_var_vehicles) && (player getVariable["module_mechanic", 0]) == 0) exitWith {};

private _onFinish = {
      (_this select 0) params ["_target"];
      if(isNull _target) exitWith {};
      _target allowdamage false;
      private _vel = velocity _target;
      private _dir = direction player;
      private _speed = 20;
      _target setVelocity [(_vel select 0) + (sin _dir * _speed), (_vel select 1) + (cos _dir * _speed), (_vel select 2)  ];
      uiSleep 1;
      _target allowdamage true;
      [player, "AmovPknlMstpSrasWrflDnon", 1] call ace_common_fnc_doAnimation;
};

private _onFailure = {
      ["STR_CANCELLLED", true] call Client_fnc_domsg;
      [player, "AmovPknlMstpSrasWrflDnon", 1] call ace_common_fnc_doAnimation;
};

[player, "AinvPknlMstpSnonWnonDr_medic5", 0] call ace_common_fnc_doAnimation;

[5, [_target],_onFinish,_onFailure, localize "STR_MECHANIC_PUSHING"] call Client_fnc_progressBar;
