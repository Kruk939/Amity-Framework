params[["_obj", objNull]];
if(isNull _obj) exitWith {};
private _actions = [
      [
            ["USABLE_ITEMS_ITEM",  localize "STR_USABLE_ITEMS_ITEM", "", {true}, {true}, {}, "", "", 5],
            ["object",[_obj, 0, []]]
      ],
      [
            ["USABLE_ITEMS_PICKUP",  localize "STR_USABLE_ITEMS_TAKE", "", {[_target] call ClientModules_UsableItems_fnc_pickUp}, {true}, {}, "", "", 5],
            ["object",[_obj, 0, ["USABLE_ITEMS_ITEM"]]]
      ],
      [
            ["USABLE_ITEMS_MOVE",  localize "STR_USABLE_ITEMS_PICKUP", "", {[_target] call ClientModules_UsableItems_fnc_reattach}, {true}, {}, "", "", 5],
            ["object",[_obj, 0, ["USABLE_ITEMS_ITEM"]]]
      ]
];
_actions call Client_fnc_addAction;
