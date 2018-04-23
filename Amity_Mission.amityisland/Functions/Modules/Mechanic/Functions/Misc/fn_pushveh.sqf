params ["_ct"];
private ["_vehicle", "_vel", "_dir", "_speed","_onFinish","_onFailure"];

_onFinish = {
        (_this select 0) params ["_target"];
      if!(local _target) exitWith {};
      _target allowdamage false;
      _vel = velocity _target;
      _dir = direction player;
      _speed = 20;
      _target setVelocity [(_vel select 0) + (sin _dir * _speed), (_vel select 1) + (cos _dir * _speed), (_vel select 2)  ];
      uiSleep 1;
      _target allowdamage true;
      [player, "AmovPknlMstpSrasWrflDnon", 1] call ace_common_fnc_doAnimation;

};

_onFailure = {
			Hint "Cancelled";
                  [player, "AmovPknlMstpSrasWrflDnon", 1] call ace_common_fnc_doAnimation;
};

[player, "AinvPknlMstpSnonWnonDr_medic5", 0] call ace_common_fnc_doAnimation;

[5, [_ct],_onFinish,_onFailure,"Pushing Vehicle"] call ace_common_fnc_progressBar;
