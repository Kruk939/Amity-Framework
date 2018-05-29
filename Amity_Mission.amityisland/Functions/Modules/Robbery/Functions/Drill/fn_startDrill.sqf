params[["_drill", objNull]];
if(isNull _drill) exitWith {};
private _onFinish = _drill getVariable["robbery_drill_onFinish", {}];
private _target = _drill getVariable["robbery_drill_target", objNull];
private _time = _drill getVariable["robbery_drill_time", 100];
private _working = _drill getVariable["robbery_drill_working", false];
if(_working || !(_drill getVariable["robbery_drill", false])) exitWith {};

[_drill, _target, _time, _onFinish] spawn {
      params["_drill", "_target", "_time", "_onFinish"];
      private _finished = true;
      private _config = (missionConfigFile >> "Robbery" >> "Config" >> "Drill");
      private _current_time = 0;
      _drill setVariable["robbery_drill_working", true, true];
      private _PS = objNull;
      while{_time > 0 && !isNull _target && !isNull _drill} do {
            if(!(_drill getVariable["robbery_drill_jammed", false])) then {
                  _time = _time - 1;
                  if(_current_time % (getNumber(_config >> "Sounds" >> "Drilling" >> "time")) == 0) then {
                        private _sound = getText(_config >> "Sounds" >> "Drilling" >> "sound");
                        if(_sound != "") then {
                              private _distance = getNumber(_config >> "Sounds" >> "Drilling" >> "distance");
                              playSound3d[_sound, _drill, false, getPos _drill, 1, 1, _distance];
                        };
                  };
                  if(_current_time % 5 == 0) then {
                        if(!isNull _PS) then {
                              deleteVehicle _PS;
                        };
                        _PS = "#particlesource" createVehicleLocal (getPosATL _drill);
                  	_PS setParticleRandom [0,[0.004,0.004,0.004],[0.01,0.01,0.01],30,0.01,[0,0,0,0],1,0.02,360];
                  	_PS setDropInterval 0.001;
                  	_PS setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[0, 0, 1],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_PS,0,true,0.1,[[0.8,0.7,0.2,0]]] ;
                  	_PS attachTo [_drill,[0,0.525,0.22]];
                  };
                  if(getNumber(_config >> "jammingChance") >= round(100)) then {
                        ["STR_ROBBERY_DRILL_JAMMED", true] call Client_fnc_doMsg;
                        _drill setVariable["robbery_drill_jammed", true, true];
                  };
            } else {
                  if(!isNull _PS) then {
                        deleteVehicle _PS;
                  };
                  if(_current_time % (getNumber(_config >> "Sounds" >> "Jammed" >> "time")) == 0) then {
                        private _sound = getText(_config >> "Sounds" >> "Jammed" >> "sound");
                        if(_sound != "") then {
                              private _distance = getNumber(_config >> "Sounds" >> "Jammed" >> "distance");
                              playSound3d[_sound, _drill, false, getPos _drill, 1, 1, _distance];
                        };
                  };
            };
            _current_time = _current_time + 1;
            uiSleep 1;
            if(!(_drill getVariable["robbery_drill_working", false])) exitWith {
                  _finished = false;
            };
      };
      if(!isNull _PS) then {
            deleteVehicle _PS;
      };
      if(_finished) then {
            [_drill, _target] call _onFinish;
      };
};
