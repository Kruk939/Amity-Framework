params[["_drill", objNull]];
private _actions = [
      [
            ["ROBBING_DRILL",  localize "STR_ROBBERY_DRILL", "", {true}, {true}, {}, "", "", 5],
            ["object",[_drill, 0, []]]
      ],
      [
            ["ROBBING_DRILL_REPAIR",  localize "STR_ROBBERY_DRILL_REPAIR", "", { [_target] call ClientModules_Robbery_fnc_repairDrill; }, { _target getVariable["robbery_drill_jammed", false]}, {}, "", "", 5],
            ["object",[_drill, 0, ["ROBBING_DRILL"]]]
      ],
      [
            ["ROBBING_DRILL_START",  localize "STR_ROBBERY_DRILL_START", "", { [_target] call ClientModules_Robbery_fnc_startDrill; }, { !(_target getVariable["robbery_drill_working", false])}, {}, "", "", 5],
            ["object",[_drill, 0, ["ROBBING_DRILL"]]]
      ],
      [
            ["ROBBING_DRILL_TAKE",  localize "STR_ROBBERY_DRILL_TAKE", "", { [_target] call ClientModules_Robbery_fnc_takeDrill; }, { _target getVariable["robbery_drill", false]}, {}, "", "", 5],
            ["object",[_drill, 0, ["ROBBING_DRILL"]]]
      ],
      [
            ["ROBBING_DRILL_TAKE",  localize "STR_ROBBERY_DRILL_REWARD", "", { (_target getVariable["robbery_reward", []]) call ClientModules_Robbery_fnc_giveReward; _target setVariable["robbery_reward", nil, true]; }, {count(_target getVariable["robbery_reward", []] )!= 0}, {}, "", "", 5],
            ["object",[_drill, 0, ["ROBBING_DRILL"]]]
      ]
];
_actions call Client_fnc_addAction;
