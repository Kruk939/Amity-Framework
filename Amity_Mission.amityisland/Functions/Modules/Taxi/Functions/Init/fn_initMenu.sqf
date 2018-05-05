private _array = [
      [
            ["TAXI_MENU","Taxi", "", {}, {(vehicle player != player) && ((vehicle player) getVariable["taxi_vehicle", false])},{}],
            ["object",[player, 1, ["ACE_SelfActions"]]]
      ],
      [
            ["TAXI_START","Start", "", {[] call ClientModules_Taxi_fnc_start}, {!((vehicle player getVariable["taxi_fare_running", false])) && ((vehicle player) getVariable["taxi_driver", objNull] == player)},{}],
            ["object",[player, 1, ["ACE_SelfActions", "TAXI_MENU"]]]
      ],
      [
            ["TAXI_STOP","Stop", "", {[] call ClientModules_Taxi_fnc_stop}, {((vehicle player getVariable["taxi_fare_running", false])) && ((vehicle player) getVariable["taxi_driver", objNull] == player)},{}],
            ["object",[player, 1, ["ACE_SelfActions", "TAXI_MENU"]]]
      ],
      [
            ["TAXI_WAIT","Wait", "", {[] call ClientModules_Taxi_fnc_wait}, {((vehicle player getVariable["taxi_fare_running", false])) && ((vehicle player) getVariable["taxi_driver", objNull] == player)},{}],
            ["object",[player, 1, ["ACE_SelfActions", "TAXI_MENU"]]]
      ],
      [
            ["TAXI_RESET","Reset", "", {[] call ClientModules_Taxi_fnc_reset}, {((vehicle player) getVariable["taxi_driver", objNull] == player)},{}],
            ["object",[player, 1, ["ACE_SelfActions", "TAXI_MENU"]]]
      ]
 ];
_array spawn Client_fnc_addAction;
