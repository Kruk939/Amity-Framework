private _vehicle = vehicle player;
if(_vehicle == player || !(_vehicle getVariable["taxi_vehicle", false])) exitWith {
      [] call ClientModules_Taxi_fnc_taxi_fare_delete;
};
[_vehicle] spawn {
      params["_vehicle"];
      private _tick = 0;
      private _tickTime = getNumber(missionConfigFile >> "Taxi" >> "Config" >> "Loop" >> "tickTime");
      private _updateEvery = getNumber(missionConfigFile >> "Taxi" >> "Config" >> "Loop" >> "updateEveryTicks");
      private _lastPos = [];
      while{!isNull _vehicle && _vehicle == vehicle player && (_vehicle getVariable["taxi_fare_running", false])} do {
            private _kilometers = _vehicle getVariable["taxi_j_k_count", 0];
            private _distance = 0;
            private _time = 0;
            if(count _lastPos != 0) then {
                  _distance = (_lastPos distance2D (getPosATL _vehicle)) / 1000;
                  _kilometers = _kilometers + _distance;
                  _vehicle setVariable["taxi_j_k_count", _kilometers];
            };
            _lastPos = getPosATL _vehicle;
            uiSleep _tickTime;
            private _minutes = _vehicle getVariable["taxi_j_m_count", 0];
            _time = (_tickTime / 60);
            _minutes = _minutes + _time;
            _vehicle setVariable["taxi_j_m_count", _minutes];

            private _j_m_sum = _vehicle getVariable["taxi_j_m_sum", 0];
            private _j_k_sum = _vehicle getVariable["taxi_j_k_sum", 0];
            if(_vehicle getVariable["taxi_wait", false]) then {
                  _j_m_sum = _j_m_sum + (_time * 2 * (_vehicle getVariable["taxi_fare_minute", 0]));
            } else {

                  _j_k_sum = _j_k_sum + (_distance * (_vehicle getVariable["taxi_fare_kilometer", 0]));
                  _vehicle setVariable["taxi_j_k_sum", _j_k_sum];
                  _j_m_sum = _j_m_sum + (_time * (_vehicle getVariable["taxi_fare_minute", 0]));
            };
            _vehicle setVariable["taxi_j_m_sum", _j_m_sum];
            _vehicle setVariable["taxi_j_sum", _j_m_sum + _j_k_sum + (_vehicle getVariable["taxi_fare_start", 0])];
            private _arr = [] call ClientModules_Taxi_fnc_getFareArray;
            if(count _arr != 0) then {
                  _arr call ClientModules_Taxi_fnc_taxi_fare_update;
            };
            _tick = _tick + 1;
            if(_updateEvery < _tick) then {
                  if(count _arr != 0) then {
                        private _units = [_vehicle] call Client_fnc_vehicleCrew;
                        if(count _units != 0) then {
                              _arr remoteExecCall["ClientModules_Taxi_fnc_taxi_fare_update", _units];
                        };
                  };
                  _tick = 0;
            };
      };
};
