private _actions = [
      [
            ["USABLE_PLACE",  localize "STR_USABLE_ITEMS_PLACE", "", {[] call ClientModules_UsableItems_fnc_place}, {!isNull UsableItems_var_attached}, {}, "", "", 5],
            ["object",[player, 1, ["ACE_SelfActions"]]]
      ],
      [
            ["USABLE_SELF_PICK",  localize "STR_USABLE_ITEMS_TAKE", "", {private _tar = objNull; {if(!isNull(_x getVariable["owner", objNull])) exitWith { _tar = _x; }} forEach nearestObjects[player, [], 10]; [_tar] call ClientModules_UsableItems_fnc_pickUp}, { private _near = false; {if(!isNull(_x getVariable["owner", objNull])) exitWith { _near = true; }} forEach nearestObjects[player, [], 10]; isNull UsableItems_var_attached && (_near); }, {}, "", "", 5],
            ["object",[player, 1, ["ACE_SelfActions"]]]
      ]
];
_actions call Client_fnc_addAction;
