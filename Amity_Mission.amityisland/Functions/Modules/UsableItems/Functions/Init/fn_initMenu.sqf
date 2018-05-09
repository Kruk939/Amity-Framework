private _actions = [
      [
            ["USABLE_PLACE",  localize "STR_USABLE_ITEMS_PLACE", "", {[] call ClientModules_UsableItems_fnc_place}, {!isNull UsableItems_var_attached}, {}, "", "", 5],
            ["object",[player, 1, ["ACE_SelfActions"]]]
      ]
];
_actions call Client_fnc_addAction;
