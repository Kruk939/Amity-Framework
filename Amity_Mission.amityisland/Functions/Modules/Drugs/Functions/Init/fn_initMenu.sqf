private _array = [
      [
            ["DRUGS_PLANT_DETACH","STR_DRUGS_PLANT_DETACH" call BIS_fnc_localize, "", { [] call ClientModules_Drugs_fnc_plant; }, {([Drugs_var_attached] call ClientModules_Drugs_fnc_is_plant) && !isNull Drugs_var_attached}],
            ["object",[player, 1, ["ACE_SelfActions"]]]
      ],
      [
            ["DRUGS_PLANT_DETACH","STR_DRUGS_PLANT_REMOVE" call BIS_fnc_localize, "", { detach Drugs_var_attached; deleteVehicle Drugs_var_attached; Drugs_var_attached = objNull; }, {([Drugs_var_attached] call ClientModules_Drugs_fnc_is_plant) && !isNull Drugs_var_attached}],
            ["object",[player, 1, ["ACE_SelfActions"]]]
      ]
];

private _plants = [] call ClientModules_Drugs_fnc_plant_getConfigs;
{
      private _class = getText(_x >> "plant");
      private _actions = [
            [
                  ["DRUGS_PLANT_MAIN",  getText(_x >> "Menu" >> "name") call BIS_fnc_localize, "", {true}, {true}, {}, "", getArray(_x >> "Menu" >> "position"), 5],
                  ["class",[_class, 0, []]]
            ],
            [
                  ["DRUGS_PLANT_HARVEST","STR_DRUGS_PLANT_HARVEST" call BIS_fnc_localize, "", { [_target] call ClientModules_Drugs_fnc_plant_harvest; }, {([_target] call ClientModules_Drugs_fnc_is_plant) && _target getVariable["ready", false]}, {}, "", "", 20],
                  ["class",[_class, 0, ["DRUGS_PLANT_MAIN"]]]
            ],
            [
                  ["DRUGS_PLANT_BURN","STR_DRUGS_PLANT_BURN" call BIS_fnc_localize, "", { [_target] call ClientModules_Drugs_fnc_plant_burn; }, {([_target] call ClientModules_Drugs_fnc_is_plant)}, {}, "", "", 20],
                  ["class",[_class, 0, ["DRUGS_PLANT_MAIN"]]]
            ]
      ];

      //adding interaction with seed
      if(!isNil "ClientModules_UsableItems_fnc_addItem") then {
            private _fnc = compile format["[""%1""] call ClientModules_Drugs_fnc_plant_attach", getText(_x >> "variable")];
            [getText(_x >> "seed"), _fnc, false] call ClientModules_UsableItems_fnc_addItem;
      };


      private _cfgActions = getArray(_x >> "Growing" >> "actions");
      {
            _x params["_var", "", "_str", "", "", "_item"];

            //make action to the plant
            private _checkFunction = { local _target };
            if(_item != "") then {
                  _checkFunction = compile format["local _target && (['%1'] call Client_fnc_countItems) != 0", _item];
            };
            private _actionFunction = compile format["[_target, '%1'] call ClientModules_Drugs_fnc_plant_action", _var];
            private _action = [
                  [format["DRUGS_PLANT_ACTION_%1", _var], _str call BIS_fnc_localize, "", _actionFunction, _checkFunction, {}, "", "", 20],
                  ["class",[_class, 0, ["DRUGS_PLANT_MAIN"]]]
            ];
            _actions pushBack _action;

            //check plant
            _checkFunction = { local _target };
            _actionFunction = compile format["[_target,'%1'] call ClientModules_Drugs_fnc_plant_check", _var];
            _action = [
                  [format["DRUGS_PLANT_CHECK_%1", _var], format["%1_CHECK",_str] call BIS_fnc_localize, "", _actionFunction, _checkFunction, {}, "", "", 20],
                  ["class",[_class, 0, ["DRUGS_PLANT_MAIN"]]]
            ];
            _actions pushBack _action;
      } forEach _cfgActions;
      _array append _actions;
} forEach _plants;
_array call Client_fnc_addAction;
