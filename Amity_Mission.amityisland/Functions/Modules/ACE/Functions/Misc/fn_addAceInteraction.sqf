/*
USAGE:
      _array = [
                  [
                        [Action name <STRING>, Name of the action shown in the menu <STRING>,Icon <STRING>,Statement <CODE>,Condition <CODE>,Insert children code <CODE> (Optional),Action parameters <ANY> (Optional),Position (Position array, Position code or Selection Name) <ARRAY>, <CODE> or <STRING> (Optional), Distance <NUMBER> (Optional), Other parameters [showDisabled,enableInside,canCollapse,runOnHover,doNotCheckLOS] <ARRAY> (Optional),Modifier function <CODE> (Optional)],
                        ["object/class", [object/class, Type of action, 0 for actions, 1 for self-actions <NUMBER>, Parent path of the new action <ARRAY> (Example: `["ACE_SelfActions", "ACE_Equipment"]`)],Use Inheritance (Default: False) <BOOL><OPTIONAL>]
                  ]
            ];
      [_array] call Client_fnc_addAceInteractions;


Documentation for actions:
      https://ace3mod.com/wiki/framework/interactionMenu-framework.html
*/

private _actions = _this;
if(count _this == 0) exitWith {};
{
      if(count _x != 0) then {
            _x params["_action_array", "_settings"];
            _settings params["_type", "_add_options"];
            private _action = _action_array call ace_interact_menu_fnc_createAction;
            if(count _add_options == 4) then {
                        _add_options set[4, _add_options select 3];
            };
            _add_options set[3, _action];
            switch(_type) do {
                  case "class": {
                        _add_options call ace_interact_menu_fnc_addActionToClass;
                  };
                  case "object": {
                        _add_options call ace_interact_menu_fnc_addActionToObject;
                  };
            };
            amity_var_actions pushBack _x;
      };
} foreach _actions;
