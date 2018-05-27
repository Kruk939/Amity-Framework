params[["_object", objNull]];
if(isNull _object) exitWith {};
_object setVariable["attachable", true];
private _actions = [
      [
            ["ARP_OBJECT_MENU", "Object", "", { [_target] call Client_fnc_attachObject; }, {_target getVariable["attachable", false]}],
            ["object",[_object, 0, []]]
      ],
      [
            ["ARP_OBJECT_ATTACH", "Attach Object", "", { [_target] call Client_fnc_attachObject; }, {_target getVariable["attachable", false]}],
            ["object",[_object, 0, ["ARP_OBJECT_MENU"]]]
      ]
];
_actions call Client_fnc_addAction;
