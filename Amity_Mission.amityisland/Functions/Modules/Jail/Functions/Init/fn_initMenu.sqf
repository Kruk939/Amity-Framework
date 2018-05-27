private _actions = [
      [
            ["JAIL_SENTENCES", "STR_JAIL_SENTENCES_OPEN" call BIS_fnc_localize, "", { [] call ClientModules_Jail_fnc_jail_sentences_open; }, { player getVariable["jail_sentences", -1] > 0}],
            ["object", [player, 1, ["ACE_SelfActions"]]]
      ],
      [
            ["JAIL_PLAYER", "STR_JAIL_DIALOG_INSERT_TITLE" call BIS_fnc_localize, "", { [_target] call ClientModules_Jail_fnc_jail_insert_open; }, {player getVariable["jail_put_player", -1] >= getNumber(missionConfigFile >> "Jail" >> "Setup" >> "Permissions" >> "jailPlayer")}],
            ["class",["Civilian", 0, ["ACE_Torso"],true]]
      ]
];



private _configs = [] call ClientModules_Jail_fnc_jail_getConfigs;
{
      if(getNumber(_x >> "Locker" >> "enable") == 1) then {
            private _pos = getArray(_x >> "Locker" >> "position");
            private _class = getText(_x >> "Locker" >> "objClass");
            private _object = nearestObject [_pos, _class];
            if(isNull _object) then {
                  _object = createVehicle [_class, _pos, [], 0, "CAN_COLLIDE"];
            };
            _object setVariable["locked", true];
            private _action = [
                  ["JAIL_LOCKER","STR_JAIL_LOCKER" call BIS_fnc_localize, "", {}, {!(player getVariable["jail_jailed", false]) && !(player getVariable["jail_escaped", false])}, {}, "", "", 5],
                  ["object", [_object, 0, ["ARP_OBJECT_MENU"]]]
            ];
            _actions pushBack _action;

            _action = [
                  ["JAIL_LOCKER_OPEN","STR_JAIL_LOCKER_OPEN" call BIS_fnc_localize, "", { [_target] call ClientModules_Jail_fnc_openLocker; }, { !(_target getVariable["locker_open", false])}],
                  ["object",[_object, 0, ["ARP_OBJECT_MENU", "JAIL_LOCKER"]]]
            ];
            _actions pushBack _action;

            _action = [
                  ["JAIL_LOCKER_CLOSE","STR_JAIL_LOCKER_CLOSE" call BIS_fnc_localize, "", { [_target] call ClientModules_Jail_fnc_closeLocker; }, { (_target getVariable["locker_open", false]) && ((player getVariable["jail_lockers_access", -1]) >= getNumber(missionConfigFile >> "Jail" >> "Setup" >> "Permissions" >> "forceCloseLocker") || (_target getVariable["profile_id", -1]) == (player getVariable["profile_id", -1]))}],
                  ["object",[_object, 0, ["ARP_OBJECT_MENU", "JAIL_LOCKER"]]]
            ];
            _actions pushBack _action;


            _action = [
                  ["JAIL_LOCKER_BROWSE","STR_JAIL_LOCKER_BROWSE" call BIS_fnc_localize, "", { [_target] call ClientModules_Jail_fnc_jail_lockers_open; }, { (player getVariable["jail_lockers_access", -1]) >= getNumber(missionConfigFile >> "Jail" >> "Setup" >> "Permissions" >> "allLockersOpen")}],
                  ["object",[_object, 0, ["ARP_OBJECT_MENU", "JAIL_LOCKER"]]]
            ];
            _actions pushBack _action;
      };

} forEach _configs;
_actions call Client_fnc_addAction;
