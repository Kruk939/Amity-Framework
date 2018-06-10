private _array = [
      [
            ["DISPATCH_OPEN",localize "STR_DISPATCH", "", {[] call ClientModules_Dispatch_fnc_dispatch_open;},{(count ([] call ClientModules_Dispatch_fnc_getFaction) != 0)},{}],
            ["object",[player, 1, ["ACE_SelfActions", "ORP_Phone"]]]
      ],
      [
          ["DISPATCH_LOGOUT",localize "STR_DISPATCH_LOGOUT", "", {call ClientModules_Dispatch_fnc_stop;},{(player getVariable["phone_dispatch_id", -1]) != -1},{}],
          ["object",[player, 1, ["ACE_SelfActions", "ORP_Phone"]]]
      ]
 ];
_array spawn Client_fnc_addAction;
