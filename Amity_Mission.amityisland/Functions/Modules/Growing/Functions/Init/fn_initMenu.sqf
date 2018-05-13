private _array = [
      [
            ["GROWING_PLANT_DETACH","STR_GROWING_PLANT_DETACH" call BIS_fnc_localize, "", { [] call ClientModules_Growing_fnc_plant; }, {([GROWING_var_attached] call ClientModules_Growing_fnc_is_plant) && !isNull GROWING_var_attached}],
            ["object",[player, 1, ["ACE_SelfActions"]]]
      ],
      [
            ["GROWING_PLANT_DETACH","STR_GROWING_PLANT_REMOVE" call BIS_fnc_localize, "", { detach GROWING_var_attached; deleteVehicle GROWING_var_attached; GROWING_var_attached = objNull; }, {([GROWING_var_attached] call ClientModules_Growing_fnc_is_plant) && !isNull GROWING_var_attached}],
            ["object",[player, 1, ["ACE_SelfActions"]]]
      ]
];

private _plants = [] call ClientModules_Growing_fnc_plant_getConfigs;
{
      private _class = getText(_x >> "plant");
      private _actions = [
            [
                  ["GROWING_PLANT_MAIN",  getText(_x >> "Menu" >> "name") call BIS_fnc_localize, "", {true}, {!(_target getVariable["onFire", false])}, {}, "", getArray(_x >> "Menu" >> "position"), 3],
                  ["class",[_class, 0, []]]
            ],
            [
                  ["GROWING_PLANT_HARVEST","STR_GROWING_PLANT_HARVEST" call BIS_fnc_localize, "", { [_target] call ClientModules_Growing_fnc_plant_harvest; }, {([_target] call ClientModules_Growing_fnc_is_plant) && _target getVariable["ready", false]}, {}, "", "", 3],
                  ["class",[_class, 0, ["GROWING_PLANT_MAIN"]]]
            ],
            [
                  ["GROWING_PLANT_BURN","STR_GROWING_PLANT_BURN" call BIS_fnc_localize, "", { [_target] call ClientModules_Growing_fnc_plant_burn_action; }, {([_target] call ClientModules_Growing_fnc_is_plant) && ([] call ClientModules_Growing_fnc_has_burnEquipment)}, {}, "", "", 3],
                  ["class",[_class, 0, ["GROWING_PLANT_MAIN"]]]
            ]
      ];

      //adding interaction with seed
      if(!isNil "ClientModules_UsableItems_fnc_addItem") then {
            private _fnc = compile format["[""%1""] call ClientModules_Growing_fnc_plant_attach", getText(_x >> "variable")];
            [getText(_x >> "seed"), _fnc, false] call ClientModules_UsableItems_fnc_addItem;
      };


      private _cfgActions = getArray(_x >> "Growing" >> "actions");
      {
            _x params["_var", "", "_str", "", "", "_item"];

            //make action to the plant
            private _checkFunction = { local _target && !(_target getVariable["ready", false]) };
            if(_item != "") then {
                  _checkFunction = compile format["local _target && (['%1'] call Client_fnc_countItems) != 0 && !(_target getVariable[""ready"", false])", _item];
            };
            private _actionFunction = compile format["[_target, '%1'] call ClientModules_Growing_fnc_plant_action", _var];
            private _action = [
                  [format["GROWING_PLANT_ACTION_%1", _var], _str call BIS_fnc_localize, "", _actionFunction, _checkFunction, {}, "", "", 20],
                  ["class",[_class, 0, ["GROWING_PLANT_MAIN"]]]
            ];
            _actions pushBack _action;

            //check plant
            _checkFunction = { local _target && !(_target getVariable["ready", false])};
            _actionFunction = compile format["[_target,'%1'] call ClientModules_Growing_fnc_plant_check", _var];
            _action = [
                  [format["GROWING_PLANT_CHECK_%1", _var], format["%1_CHECK",_str] call BIS_fnc_localize, "", _actionFunction, _checkFunction, {}, "", "", 20],
                  ["class",[_class, 0, ["GROWING_PLANT_MAIN"]]]
            ];
            _actions pushBack _action;
      } forEach _cfgActions;
      _array append _actions;
} forEach _plants;
_array call Client_fnc_addAction;
