private _actions = [
      [
            ["COMPUTER_OPEN", "STR_COMPUTER_OPEN" call BIS_fnc_localize, "", { [] call ClientModules_Computer_fnc_computer_main_open; }, { player getVariable["module_computer", -1] > 0 && (vehicle player) != player}],
            ["object", [player, 1, ["ACE_SelfActions"]]]
      ]
];
_actions call Client_fnc_addAction;
