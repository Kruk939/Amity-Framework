params[["_vehicle",objNull],["_type",""]];
private["_damageArray","_tyreArray","_hitpointsArray","_hitpointsDamageArray","_count","_i","_hitpoint","_damage","_index","_name","_max"];
if(_vehicle == objNull) exitWith {};
if(_type == "") exitWith {};
_damageArray = getAllHitPointsDamage _vehicle;
_hitpointsArray = _damageArray select 0;
_hitpointsDamageArray = _damageArray select 2;
_count = count (_hitpointsArray);
_max = 0;
_index = -1;
_name = "";
private _onFinish = {
      (_this select 0) params ["_target", "_name", "_text", "_remove"];
      [_target,_name] remoteExec ["ClientModules_Mechanic_fnc_fixSelection", 2];
      private _anim =  getText(missionConfigFile >> "Mechanic" >> "Config" >> "animation");
      [player, _anim, 1] call ace_common_fnc_doAnimation;
      [_text, true] spawn Client_fnc_domsg;
};

private _onFailure = {
      Hint "Cancelled";
      private _anim =  getText(missionConfigFile >> "Mechanic" >> "Config" >> "animation");
      [player, _anim, 1] call ace_common_fnc_doAnimation;
};

if(_type IN ["HitLFWheel","HitLF2Wheel","HitRFWheel","HitRF2Wheel"]) exitWith {
      private _kit = getText(missionConfigFile >> "Mechanic" >> "Items" >> "wheelKit");
      if(_kit != "" && (([_kit, false] call Client_fnc_countItems) == 0)) exitWith {
            ["You don't have wheel!", true] spawn Client_fnc_domsg; //does not have item
      };

      [15, [_vehicle, _type, "You changed Tyre!"],_onFinish,_onFailure,"Repairing Tyre"] call Client_fnc_progressBar;
};
if(_type == "engine") exitWith {
      private _kit = getText(missionConfigFile >> "Mechanic" >> "Items" >> "engineKit");
      if(_kit != "" && (([_kit, false] call Client_fnc_countItems) == 0)) exitWith {
            ["You don't have engine repair kit!", true] spawn Client_fnc_domsg;
      };
      _tyreArray = ["HitEngine"];
      private _i = 0;
      for[{}, {_i < _count}, {_i = _i + 1}] do {
            _hitpoint = _hitpointsArray select _i;
            _damage = _hitpointsDamageArray select _i;
            if(_hitpoint IN _tyreArray) then {
                  if(_damage > _max) then {
                        _max = _damage;
                        _name = _hitpoint;
                        _index = _i;
                  };
            };
      };
      if(_index != -1 && _name != "" && _max != 0) then {
            _vehicle setHitPointDamage [_name, 0];
            //player removeItem "CG_wheel";
            [15, [_vehicle, _name, "You fixed the engine!"],_onFinish,_onFailure,"Repairing engine"] call Client_fnc_progressBar;
      } else {
            ["There is nothing to fix!", true] call Client_fnc_domsg;
      };

};
if(_type == "fuelTank") exitWith {
      private _kit = getText(missionConfigFile >> "Mechanic" >> "Items" >> "fuelKit");
      if(_kit != "" && (([_kit, false] call Client_fnc_countItems) == 0)) exitWith {
            ["You don't have hull part!", true] spawn Client_fnc_domsg; //does not have item
      };
      _tyreArray = ["HitFuel"];
      private _i = 0;
      for[{}, {_i < _count}, {_i = _i + 1}] do {
            _hitpoint = _hitpointsArray select _i;
            _damage = _hitpointsDamageArray select _i;
            if(_hitpoint IN _tyreArray) then {
                  if(_damage > _max) then {
                        _max = _damage;
                        _name = _hitpoint;
                        _index = _i;
                  };
            };
      };
      if(_index != -1 && _name != "" && _max != 0) then {
            [15, [_vehicle, _name, "You fixed the  fuel tank!"],_onFinish,_onFailure,"Repairing Fuel tank"] call Client_fnc_progressBar;
      } else {
            ["There is nothing to fix!", true] call Client_fnc_domsg;
      };
};
if(_type == "hull") exitWith {
      private _kit = getText(missionConfigFile >> "Mechanic" >> "Items" >> "hullKit");
      if(_kit != "" && (([_kit, false] call Client_fnc_countItems) == 0)) exitWith {
            ["You don't have hull part!", true] spawn Client_fnc_domsg; //does not have item
      };
      _tyreArray = ["HitBody","HitLBWheel","HitLMWheel","HitRBWheel","HitRMWheel","HitHull"];
      private _i = 0;
      for[{}, {_i < _count}, {_i = _i + 1}] do {
            _hitpoint = _hitpointsArray select _i;
            _damage = _hitpointsDamageArray select _i;
            if(_hitpoint IN _tyreArray) then {
                  if(_damage > _max) then {
                        _max = _damage;
                        _name = _hitpoint;
                        _index = _i;
                  };
            };
      };
      if(_index != -1 && _name != "" && _max != 0) then {
            [15, [_vehicle, _name, "You fixed one of the hull parts!"],_onFinish,_onFailure,"Repairing Hull"] call Client_fnc_progressBar;
      } else {
            ["There is nothing to fix!", true] call Client_fnc_domsg;
      };
};
if(_type == "glass") exitWith {
      private _kit = getText(missionConfigFile >> "Mechanic" >> "Items" >> "glassKit");
      if(_kit != "" && (([_kit, false] call Client_fnc_countItems) == 0)) exitWith {
            ["You don't have car glass!", true] spawn Client_fnc_domsg; //does not have item
      };
      private _i = 0;
      for[{}, {_i < _count}, {_i = _i + 1}] do {
            _hitpoint = _hitpointsArray select _i;
            _damage = _hitpointsDamageArray select _i;
            if((toLower _hitpoint) find "glass" > -1) then {
                  if(_damage > _max) then {
                        _max = _damage;
                        _name = _hitpoint;
                        _index = _i;
                  };
            };
      };
      if(_index != -1 && _name != "" && _max != 0) then {
            [15, [_vehicle, _name, "You replaced one plate of glass!"],_onFinish,_onFailure,"Repairing Glass"] call Client_fnc_progressBar;
      } else {
            ["There is nothing to fix!", true] call Client_fnc_domsg;
      };
};
